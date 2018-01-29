package com.vehicle.dao;

import com.vehicle.utils.JedisPoolUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.NullValueInNestedPathException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.exceptions.JedisDataException;

import javax.annotation.Resource;

/**
 * @author 123
 * @CreateTime 2018/01/23
 * Created by 123 on 2018/01/23.
 */

public class VehicleMonitor {

    Logger logger = Logger.getLogger(VehicleMonitor.class);
    /* @Resource(name = "jedisClusterPool")
     JedisPoolUtils jedisPoolUtils;*/
    static ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring-redis.xml");

    static JedisPoolUtils jedisPoolUtils = (JedisPoolUtils) context.getBean("jedisClusterPool");

    public static String getVehicleRealData(String key, String search) throws JedisDataException {
        Jedis jedis = jedisPoolUtils.getJedis();
        String data = jedis.hget(key, search);
        System.out.println("=========" + data);
        if (data == null) {
            return null;
        }
        return data;
    }
}
