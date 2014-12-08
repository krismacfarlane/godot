# *Read* through the following code
# Write comments above *each line* explaining what it does

# pulling in a gem
require 'colorize'

# setting a variable as a boolean
playing_game = true
# creating a hash
players = {}

# start a while loop
while playing_game

# setting a variable as a random number, a range from 1 to 10, saving as an array
  secret_number = (1..10).to_a.sample
# setting a variable as a boolean
  guessed = false

# printing string 'name'
  $stdout.print('Name? ')
# prints input and assigning variable
  player = $stdin.gets.chomp
# creating an array
  players[player] = []

# printing a string
  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

# starting a while loop within the while loop
  while !guessed

# printing a string
    $stdout.print('> ')
# getting the user's input
    guess = $stdin.gets.to_i
# putting the variable guess (user input) into the players array
    players[player].push(guess)

# starting a conditional, if the secret number equals the user's guess
    if secret_number == guess
# then the guessed changes from false to true and throws you out of the while loop
      guessed = true
# if the user's guess is not the secret number then the loop continues, but first!
    else
# print the user's input with a string in red
      $stdout.puts("#{guess}? Try again!".red)
# ending the conditional
    end
# ending internal while loop
  end

# when the user's input equals the secret number, printing the user's name with string, including the guesses found in the array
  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)

# prints string that would restart the while loop
  $stdout.puts('New Game?')
# if they answer yes to the question then restart while loop
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
# otherwise end the loop
end

# print the exit message
$stdout.puts('Goodbye!')

