$stdout.puts("Hi there, I'm Eliza! Let's have a chat.\nWhat do you want to talk about?")

def answer
  $stdout.print(">> ")
  $stdin.gets.chomp.downcase
end

def responses
  elizas_words = ["Interesting, tell me more.", "You really think so?"]
  $stdout.puts(elizas_words.sample)
end

def responses_quest
  elizas_ans = ["Oh well, I don't know if there's much I can say about that.", "Ha! You ask too much! Let's talk about you."]
  $stdout.puts(elizas_ans.sample)
end

def responses_excl
  elizas_yells = ["NOOOO!!!!", "!!!!!!"]
  $stdout.puts(elizas_yells.sample)
end

def responses_you
  elizas_you = ["You know a lot about me.", "I'm an open book, I guess."]
  $stdout.puts(elizas_you.sample)
end

loop do
  user_input = answer

  break if user_input.downcase == "goodbye"

  if user_input.end_with?("?")
    responses_quest
  elsif user_input.end_with?("!")
    responses_excl
  elsif user_input.include?("you")|| user_input.include?("your") || user_input.include?("eliza")
    responses_you
  else
    responses
  end

end

