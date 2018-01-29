import com.vehicle.entity.Data;
import com.vehicle.entity.message;
import com.vehicle.entity.vehicle;
import com.vehicle.service.hisVehicleService;
import com.vehicle.service.messageService;
import com.vehicle.service.vehicleService;
import com.vehicle.utils.JsonUtils;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 报文接受   并保存入库
 */
public class KafkaConsumerTest1 {

    Logger logger = Logger.getLogger(KafkaConsumerTest1.class);

    public static void main(String[] args) throws ParseException {
        Long fetchTimeOut = 100L;
        Properties props = new Properties();
        props.put("bootstrap.servers", "47.95.227.40:9092");
        props.put("group.id", "abc");
        props.put("enable.auto.commit", "false");// 自动提交offsets
        props.put("session.timeout.ms", "30000");
        props.put("key.deserializer",
                "org.apache.kafka.common.serialization.StringDeserializer");// 反序列化器
        props.put("value.deserializer",
                "org.apache.kafka.common.serialization.StringDeserializer");
        KafkaConsumer<String, String> consumer = new KafkaConsumer<String, String>(props);
        consumer.subscribe(Arrays.asList("REALINFO", "LOGIN"));
        ConsumerRecord<String, String> record = null;
        List<ConsumerRecord<String, String>> buffer = new ArrayList<ConsumerRecord<String, String>>();
        while (true) {
            ConsumerRecords<String, String> records = consumer
                    .poll(fetchTimeOut);
            System.out.println("====我在运行=====");
            if (records.count() > 0) {
                System.out.println("====接到数据=====");
                Iterator<ConsumerRecord<String, String>> it = records
                        .iterator();
                while (it.hasNext()) {
                    try {
                        record = it.next();
                        buffer.add(record);
                    } catch (Exception e1) {

                    }
                }
                insertRedis(buffer);
                consumer.commitSync();
                buffer.clear();
            } else {
                // 如果没有接到数据，需要休眠下10s，再去Kafka拉取数据
                try {
                    Thread.sleep(10000);
                } catch (InterruptedException ie) {

                }
            }
        }
    }




   /* @Autowired
    vehicleService vehicleService = null;*/

    private static void insertRedis(List<ConsumerRecord<String, String>> buffer) throws ParseException {
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        if (buffer != null && buffer.size() > 0) {
            for (ConsumerRecord<String, String> record : buffer) {
                String k = record.key();
                String v = record.value();
                System.out.println("Key:" + k);
                System.out.println("Value:" + v);

                Data data = (Data) JsonUtils.JSONToObject(v, Data.class);
                System.out.println(data.getVin());


                vehicleService vehicleService = (vehicleService) context.getBean("vehicleService");
                messageService messageService = (messageService) context.getBean("messageService");
                vehicle vehicle = vehicleService.getVehicleByVin(data.getVin());

                message message = new message();
                message.setVehicleCode(vehicle.getVehicleCode());
                message.setAcceptTime(new Date());


                message.setMessageTime(new Date());
                message.setVin(vehicle.getVin());
                message.setInfoBody(v);
                message.setMessageLength(v.length());
                //
                System.out.println("=========================" + data.getCommandTag().toString());
                if (data.getCommandTag().toString() == "REALTIME_INFO_REPORT") {
                    // System.out.println(data.getCommandTag().toString()=="REALTIME_INFO_REPORT");
                    message.setMessageType("实时上报");
                }
                int count = messageService.addMessage(message);
                System.out.println("count=======" + count);

            }
        }
        System.out.print("插入数据库");
    }
}
