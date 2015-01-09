# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."
require 'redis'

$redis = Redis.new({:host => "127.0.0.1", :port => "6379"})

$stdout.puts "What is your name?"
name = $stdin.gets.chomp

age = $redis.get(name)

if age
  $stdout.puts("Oh right, you're #{age}!")
else
  $stdout.puts "What is your age?"
  age = $stdin.gets.to_i
  $redis.set(name, age)
  $stdout.puts "Hello #{name}. You are #{age}."
end
