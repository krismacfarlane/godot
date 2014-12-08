# *Read* through the following code
# Write comments above *each line* explaining what it does

# pulling in a gem
require 'colorize'

# Methods

# this method adds a random number from range 1-10 and adds to array
def generate_random_number
  (1..10).to_a.sample
end

# prints a message in green
def alert(message)
  $stdout.puts(message.green)
end

# prints a message in red
def warn(message)
  $stdout.puts(message.red)
end

# method that asks the question, gives indictator for answer, chomps the entry
def ask(question)
  $stdout.puts(question)
  $stdout.print('> ')
  $stdin.gets.chomp
end

# Main Program

# creates a hash
players = {}

# runs the method generate_random_number and sets it to variable,
loop do
  secret_number = generate_random_number
# runs the method ask and sets it to a variable
  player = ask('Name? ')
# creates an array called players with the variable in player, containing the answer to name
  players[player] = []
# runs the method alert, putting the string in green
  alert('I\'m thinking of a number between 1 and 10.')

# starts another loop
  loop do
# runs the ask method and converts to an integer and sets to a variable
    guess = ask('Can you guess it?').to_i
# adds the answer guess variable to the end of the players array
    players[player].push(guess)
# ends the loop if the guess is the secret number
    break if secret_number == guess
# if the secret_number is not the guess continue on, and run method for warn.
    warn("#{guess}? Try again!")
# ends the internal loop
  end

# runs the alert method, putting the user's name in string, displaying in green
  alert("Great job, #{player}!")
# runs the alert method, putting the total number of guesses in the string
  alert("You guessed in #{players[player].size} guesses.")
# runs ask method and set to variable
  choice = ask('New Game? y/n')
# ends the loop if the answer starts with an n
  break if choice.start_with?('n')
end

alert('Goodbye!')
