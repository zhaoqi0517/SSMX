package com.sf.ssm.redis;

import redis.clients.jedis.ShardedJedis;

/**
 * Redis 数据连接池
 *
 * @author 872677
 */
public interface RedisDataSource {

    /**
     * 获取redis客户端，用于执行redis命令
     *
     * @return redis客户端
     */
    public ShardedJedis getRedisClient();

    /**
     * 将资源返回给pool
     *
     * @param shardedJedis redis客户端
     */
    public void returnResource(ShardedJedis shardedJedis);

}
