package com.vehicle.kafka;

import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class ProducerPool implements ApplicationContextAware {

    private final Logger logger = Logger.getLogger(ProducerPool.class);
    /**
     * 对象池中对象大小
     */
    private int poolSize;

    private int index = 0;

    private ReadWriteLock readWriteLock = new ReentrantReadWriteLock();

    /**
     * 消息提供者 client
     */
    private ProducerClient[] producerClients;

    /**
     * @see ApplicationContextAware#setApplicationContext(ApplicationContext)
     */
    @Override
    public void setApplicationContext(ApplicationContext ctx)
            throws BeansException {
        producerClients = new ProducerClient[poolSize];
        for (int i = 0; i < poolSize; i++) {
            producerClients[i] = ctx.getBean(ProducerClient.class);
        }

    }

    /**
     * 发送消息
     *
     * @param topic
     * @param
     */
    public void send(String topic, String key, String content) {
        readWriteLock.writeLock().lock();
        try {
            index++;
            if (index > poolSize) {
                index = 1;
            }
        } catch (Exception e) {
        } finally {
            readWriteLock.writeLock().unlock();
        }
        try {
            logger.info("发送kafka内容如下[====topic=" + topic + ",key=" + key
                    + ",msg=" + content + "]");
            producerClients[index % poolSize].send(topic, key, content);
        } catch (Exception e) {
            logger.error(e.getMessage() + "[topic=" + topic + ",key=" + key
                    + ",msg=" + content + "]", e);
        }
    }

    /**
     * @return the poolSize
     */

    public int getPoolSize() {
        return poolSize;
    }

    /**
     * @param poolSize the poolSize to set
     */
    public void setPoolSize(int poolSize) {
        this.poolSize = poolSize;
    }
}
