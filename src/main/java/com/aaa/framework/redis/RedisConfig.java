package com.aaa.framework.redis;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import redis.clients.jedis.JedisPoolConfig;

@Configuration
@PropertySource("classpath:redis.properties")
@ConfigurationProperties(prefix = "redis")
public class RedisConfig {
    private int maxIdle;
    private int maxTotal;
    private int minEvictableIdleTimeMillis;
    private int numTestsPerEvictionRun;
    private int timeBetweenEvictionRunsMillis;
    private int maxWaitMillis;
    private boolean testOnBorrow;
    private String hostName;
    private int port;

    public int getMaxIdle() {
        return maxIdle;
    }

    public void setMaxIdle(int maxIdle) {
        this.maxIdle = maxIdle;
    }

    public int getMaxTotal() {
        return maxTotal;
    }

    public void setMaxTotal(int maxTotal) {
        this.maxTotal = maxTotal;
    }

    public int getMinEvictableIdleTimeMillis() {
        return minEvictableIdleTimeMillis;
    }

    public void setMinEvictableIdleTimeMillis(int minEvictableIdleTimeMillis) {
        this.minEvictableIdleTimeMillis = minEvictableIdleTimeMillis;
    }

    public int getNumTestsPerEvictionRun() {
        return numTestsPerEvictionRun;
    }

    public void setNumTestsPerEvictionRun(int numTestsPerEvictionRun) {
        this.numTestsPerEvictionRun = numTestsPerEvictionRun;
    }

    public int getTimeBetweenEvictionRunsMillis() {
        return timeBetweenEvictionRunsMillis;
    }

    public void setTimeBetweenEvictionRunsMillis(int timeBetweenEvictionRunsMillis) {
        this.timeBetweenEvictionRunsMillis = timeBetweenEvictionRunsMillis;
    }

    public int getMaxWaitMillis() {
        return maxWaitMillis;
    }

    public void setMaxWaitMillis(int maxWaitMillis) {
        this.maxWaitMillis = maxWaitMillis;
    }

    public boolean isTestOnBorrow() {
        return testOnBorrow;
    }

    public void setTestOnBorrow(boolean testOnBorrow) {
        this.testOnBorrow = testOnBorrow;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    //初始化redis连接池
    @Bean("jedisPoolConfig")
    public JedisPoolConfig getJedisPool(){
        JedisPoolConfig jpc= new JedisPoolConfig();
        jpc.setMaxIdle(maxIdle);
        jpc.setMaxTotal(maxTotal);
        jpc.setMinEvictableIdleTimeMillis(minEvictableIdleTimeMillis);
        jpc.setNumTestsPerEvictionRun(numTestsPerEvictionRun);
        jpc.setTimeBetweenEvictionRunsMillis(timeBetweenEvictionRunsMillis);
        jpc.setMaxWaitMillis(maxWaitMillis);
        jpc.setTestOnBorrow(testOnBorrow);
        return jpc;

    }
    //初始化jedisConnectionFactory
    @Bean("jedisConnectionFactory")
    public JedisConnectionFactory getJedisConnectionFactory(){
        JedisConnectionFactory jcf=new JedisConnectionFactory();
        jcf.setHostName(hostName);
        jcf.setPort(port);
        jcf.setPoolConfig(getJedisPool());
        return jcf;
    }
    //使用中间类解决静态注入
    @Bean("redisCacheTransfer")
    public RedisCacheTransfer getRedisCacheTransfer(){
        RedisCacheTransfer redisCacheTransfer=new RedisCacheTransfer();
        redisCacheTransfer.setJedisConnectionFactory(getJedisConnectionFactory());
        return redisCacheTransfer;
    }
    @Bean(name = "redisTemplate")
    public RedisTemplate getRedisTemplate(){
        RedisTemplate template = new StringRedisTemplate(getJedisConnectionFactory());
        return template;
    }
}
