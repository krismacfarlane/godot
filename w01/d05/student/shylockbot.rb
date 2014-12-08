require 'pry'
# binding.pry

#program intro
$stdout.puts("This is ShylockBot.")

def answer
  $stdout.print(">> ")
  $answer = $stdin.gets.chomp
end

def accounting
  operand_values = answer
  $answer_accounting = $answer_to.i
  purse_remnants = "-" + $stdout.print(operand_values)
end

def math_time
  $purse_math = accounting
  operator = :-
  operand_values = [10000, $purse_math]
  solution = operand_values.inject(operator)
end

def purse
  $stdout.print(":: ")
  actions = "ShylockBot pulls out his purse"
  $stdout.print(actions + " ::\n")
end

def purse_contents
  $stdout.print($purse_math)
end

def confuse
  answer
  $stdin.gets.chomp.downcase
  shylocks_confused = [":: ShylockBot looks confused ::", ":: I am confused ::"]
  $stdout.puts(shylocks_confused.sample + "\n")
end

loop do
  user_input = answer

  break if user_input == "goodbye"

  if user_input == "purse"
    purse
  elsif user_input == ("1".."100").to_a
    accounting
  else
    confuse
  end

end
