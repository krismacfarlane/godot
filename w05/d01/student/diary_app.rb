require_relative 'diary'

diary = Diary.new

  puts "What is your name?"
  name = gets.chomp.downcase

  puts "Do you want to WRITE in or READ your diary?"
  answer = gets.chomp.downcase

  if answer == "read"
    puts diary.get_secrets(name)
  elsif answer == "write"
    puts "What is your secret?"
    secret = gets.chomp.downcase
    puts "Here are your secrets: #{diary.tell_secret(name, secret)}"
  end


