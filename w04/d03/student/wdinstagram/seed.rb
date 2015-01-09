require 'redis'

redis = Redis.new
redis.flushdb

redis.set("entry_id", "1000")
