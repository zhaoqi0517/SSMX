package com.sf.ssm.redis;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.ShardedJedis;

public class RedisDataSourceProvider implements RedisDataSource {

    private static final Logger logger = LoggerFactory.getLogger(RedisDataSourceProvider.class);

    private ShardedJedisSentinelPool shardedJedisPool;
    
    

    public ShardedJedisSentinelPool getShardedJedisPool() {
		return shardedJedisPool;
	}

	@Override
    public ShardedJedis getRedisClient() {
        try {
            return shardedJedisPool.getResource();
        } catch (Exception t) {
            logger.error(t.getMessage(), t);
        }
        return null;
    }

    @Override
    public void returnResource(ShardedJedis shardedJedis) {
        try {
            shardedJedisPool.returnResourceObject(shardedJedis);
        } catch (Exception t) {
            logger.error(t.getMessage(), t);
        }

    }

    public void setShardedJedisPool(ShardedJedisSentinelPool shardedJedisPool) {
        this.shardedJedisPool = shardedJedisPool;
    }
}
