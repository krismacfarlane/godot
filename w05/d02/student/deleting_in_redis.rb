require 'redis'
require 'pry'

$redis = Redis.new
$redis.flushdb

$redis.rpush("colors", ["blue", "green"])
$redis.rpush("colors", "red")
$redis.rpush("colors", "orange")
$redis.rpush("colors", "mauve")
$redis.rpush("colors", "purple")
$redis.rpush("colors", "dave")

$redis.lrange("colors", 0, -1)
$redis.rpop("colors")
$redis.lpop("colors")

binding.pry

$redis.hmset("pj", "first_name", "phillip", "last_name", "hughes", "age", 34)
$redis.hgetall("pj")

# overwriting a value in a hash
$redis.hset("pj", "first_name", "pj")

# deletes a key-value pair
$redis.hdel("pj", "age")

# deletes multiple attributes from a hash
$redis.hdel("pj", ["first_name", "last_name"])
