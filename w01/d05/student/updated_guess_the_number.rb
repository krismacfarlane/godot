# *Read* through the following code
# Write comments above *each line* explaining what it does

<<<<<<< HEAD
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
=======
# calling a gem which is also a file of preset font types/methods
require 'colorize'

#  instantiates the variable playing_game = true
playing_game = true
# creating a hash named players
players = {}

# starts the while loop with playing being = true
while playing_game

# sets secret number equal to a sample of an array filled with 1-10
  secret_number = (1..10).to_a.sample
# sets guessed = false
  guessed = false

# prints to the user "Name?""
  $stdout.print('Name? ')
  # sets player = the users input (i.e. their name)
  player = $stdin.gets.chomp
# creates an array within a hash
  players[player] = []
#outputs to the user the statement below
  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

#new while loop runs when guessed = false
  while !guessed
# print line
    $stdout.print('> ')
#sets guess = user input which is changed to an int
    guess = $stdin.gets.to_i
# puts the players guess into the array with the hash
    players[player].push(guess)

# An if loop to check to see if the number is correct
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
    if secret_number == guess
# then the guessed changes from false to true and throws you out of the while loop
      guessed = true
# if the user's guess is not the secret number then the loop continues, but first!
    else
<<<<<<< HEAD
# print the user's input with a string in red
      $stdout.puts("#{guess}? Try again!".red)
# ending the conditional
    end
# ending internal while loop
  end
=======
# otherwise outputs a fail statement which calls your guess
      $stdout.puts("#{guess}? Try again!".red)
    end #end if

  end # end inner while
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

# when the user's input equals the secret number, printing the user's name with string, including the guesses found in the array
  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)

# prints string that would restart the while loop
  $stdout.puts('New Game?')
<<<<<<< HEAD
# if they answer yes to the question then restart while loop
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
# otherwise end the loop
end
=======
# gets a user input to decide whether to exit the while loop based on whether there answer starts with a Y
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
end # end outer while
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

# print the exit message
$stdout.puts('Goodbye!')

