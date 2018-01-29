import kafka.consumer.Consumer;
import kafka.consumer.ConsumerConfig;
import kafka.consumer.KafkaStream;
import kafka.javaapi.consumer.ConsumerConnector;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class KafkaConsumerTest {
	private final ConsumerConnector consumer;
	private final String topic;
	private ExecutorService executor;

	public KafkaConsumerTest(String a_zookeeper, String a_groupId, String a_topic) {
		consumer = Consumer.createJavaConsumerConnector(createConsumerConfig(
				a_zookeeper, a_groupId));
		this.topic = a_topic;
	}

	public void shutdown() {
		if (consumer != null)
			consumer.shutdown();
		if (executor != null)
			executor.shutdown();
	}

	public void run(int numThreads) {
		Map<String, Integer> topicCountMap = new HashMap<String, Integer>();
		topicCountMap.put(topic, new Integer(numThreads));
		Map<String, List<KafkaStream<byte[], byte[]>>> consumerMap = consumer
				.createMessageStreams(topicCountMap);
		List<KafkaStream<byte[], byte[]>> streams = consumerMap.get(topic);

		// now launch all the threads
		executor = Executors.newFixedThreadPool(numThreads);

		// now create an object to consume the messages
		//
		int threadNumber = 0;
		for (final KafkaStream stream : streams) {
			executor.submit(new KafkaConsumerMsgTask(stream, threadNumber));
			threadNumber++;
		}
	}

	private static ConsumerConfig createConsumerConfig(String a_zookeeper,
			String a_groupId) {
		Properties props = new Properties();
		props.put("zookeeper.connect", a_zookeeper);
		props.put("group.id", a_groupId);
		props.put("zookeeper.session.timeout.ms", "4000");
		props.put("zookeeper.sync.time.ms", "200");
		props.put("auto.commit.interval.ms", "1000");

		return new ConsumerConfig(props);
	}

	public static void main(String[] arg) {
		String[] args = { "47.95.227.40:2181", "helloworld", "REALINFO", "1" };
		String zooKeeper = args[0];
		String groupId = args[1];
		String topic = args[2];
		int threads = Integer.parseInt(args[3]);

		KafkaConsumerTest demo = new KafkaConsumerTest(zooKeeper, groupId, topic);
		demo.run(threads);

		try {
			Thread.sleep(10000);
		} catch (InterruptedException ie) {

		}
		//demo.shutdown();
	}
}
