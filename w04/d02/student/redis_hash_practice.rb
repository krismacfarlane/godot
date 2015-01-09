require 'redis'
$redis = Redis.new
users = ["dain", "dflip", "the geomancer", "the hoop"]

users.each do |user|
  id = $redis.incr("users_count")
  $redis.hset("user:#{id}", "name", user)
  $redis.hset("user:#{id}", "id", id)
end
