require 'pry'
# binding.pry

#program intro
$stdout.puts("This is ShylockBot.")

def answer
  $stdout.print(">> ")
  $answer = $stdin.gets.chomp
end

# the roadblock I'm encountering is that I want to take the user's loan amount
# input and convert it to an integer inside an array! But I can't figure out how
# to do both of them without it creating a million errors!
def loaning
  $stdout.puts("How much would you like to borrow? (1 - 100)")
  $loan_amount = $stdin.gets.chomp.to_a
  $stdout.puts ("-" + "#{$loan_amount}")
  loan_tracker = $loan_amount.to_i
  $loan_array[$loan_tracker] = []
end

def accounting
  loaning
  operand_values = $loan_amount
  operator = :-
  operand_values = [10000, $loan_tracker]
  $solution = operand_values.inject(operator)
end

def purse
  $stdout.print(":: ")
  actions = "ShylockBot pulls out his purse
  There are #{$solution} ducats in the purse."
  $stdout.print(actions + " ::\n")
end

def confuse
  shylocks_confused = [":: ShylockBot looks confused ::", ":: I am confused ::"]
  $stdout.puts(shylocks_confused.sample + "\n")
end

loop do
  user_input = answer

  break if user_input == "goodbye"

  if user_input == "purse"
    purse
  elsif user_input == "loan"
    loaning
  else
    confuse
  end

end
