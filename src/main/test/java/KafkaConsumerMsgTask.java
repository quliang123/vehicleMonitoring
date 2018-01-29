
import com.vehicle.entity.vehicleHistory;
import com.vehicle.service.hisVehicleService;
import com.vehicle.service.messageService;
import com.vehicle.utils.JedisPoolUtils;
import kafka.consumer.ConsumerIterator;
import kafka.consumer.KafkaStream;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import redis.clients.jedis.Jedis;

import java.util.concurrent.locks.ReentrantLock;

public class KafkaConsumerMsgTask implements Runnable {
    private KafkaStream m_stream;
    private int m_threadNumber;
    private JedisPoolUtils jedisPoolUtils;
    ApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

    Logger logger = Logger.getLogger(KafkaConsumerMsgTask.class);

/*    @Autowired
    private hisVehicleService vehicleService;*/

    private Jedis jedis;

    public KafkaConsumerMsgTask(KafkaStream stream, int threadNumber) {
        m_threadNumber = threadNumber;
        m_stream = stream;
        JedisPoolUtils jedisPoolUtils = (JedisPoolUtils) context.getBean("jedisClusterPool");
        jedisPoolUtils.init();
        jedis = jedisPoolUtils.getJedis();

    }


    @Autowired
    messageService messageService;

    public void run() {

        ConsumerIterator<byte[], byte[]> it = m_stream.iterator();
        Integer count = 0;

        while (it.hasNext()) {
            String topic = it.next().topic();
            String message = new String(it.next().message());
            String key = new String(it.next().key());


            System.out.println("获取数据:" + m_threadNumber + ": "
                    + message);
            System.out.println("============" + key + "=========" + message + "========" + topic);

            System.out.println("准备把数据插入数据库了");




         //   messageService.addMessage()


            jedis.hset(topic, key, message);
            count++;
               /*   synchronized (this) {      }*/
            System.out.println("======================插入数据第" + count + "次");
        }
    }
}
