# Correct the following code to print out Taylor's face.

################################################################################
# Part 1
################################################################################

require 'pry'
# binding.pry

# Step 1
<<<<<<< HEAD
<<<<<<< HEAD
# Require the file taylors.rb
require_relative './taylors.rb'

# Require the file boneyard/exes.rb
require_relative './boneyard/exes.rb'
=======
require_relative './taylors.rb'
require_relative './boneyard/exes.rb'
require 'pry'
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
=======
# Require the file taylors.rb

# Require the file boneyard/exes.rb
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44

# Step 2
# Methods

def sing(lyric)
<<<<<<< HEAD
<<<<<<< HEAD
  "♬" + lyric + "♬"
=======
  changed_lyric = "♬#{lyric}♬"
  return changed_lyric
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
=======
  # missing code
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
end

def mmm_mmm(lyric)
<<<<<<< HEAD
<<<<<<< HEAD
  lyric + ", mmm-mmm"
end

def back_up(lyric, number_of_words)
  back_up_singers = lyric.split(" ").last(number_of_words).join(" ")
  "#{lyric} (#{back_up_singers})"
=======
  return "#{lyric}, mmm-mmm"
=======
  # missing code
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
end


def back_up(lyric, number_of_words)
<<<<<<< HEAD
  return_lyrics = lyric.split.last(number_of_words).join(" ")
  return "#{lyric} (#{return_lyrics})"
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
=======
  # missing code
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44
end

# Step 3
# Create the additional methods

# repeat

# double

# stutter

$stdout.puts(TAYLORS[0][:head])

exit unless sing("I stay out too late") == "♬I stay out too late♬"
exit unless sing("Got nothing in my brain").include?("♬Got nothing in my brain♬")
exit unless mmm_mmm("That's what people say") == ("That's what people say, mmm-mmm")

$stdout.puts(TAYLORS[0][:face])

exit unless back_up("I'm dancing on my own", 4) == "I'm dancing on my own (dancing on my own)"
exit unless back_up("I make the moves up as I go", 5).include?("(moves up as I go)")
exit unless mmm_mmm("And that's what they don't see") == "And that's what they don't see, mmm-mmm"
exit unless mmm_mmm("That's what they don't see").include?(", mmm-mmm")

$stdout.puts(TAYLORS[0][:mouth])

exit unless repeat("'Cause the players gonna play") == ("'Cause the players gonna play, play, play, play, play")
exit unless repeat("And the haters gonna hate").include?("hate, hate, hate, hate, hate")
exit unless repeat("Baby, I'm just gonna shake").include?("shake, shake, shake, shake, shake")
exit unless double("I shake it off") == "I shake it off, I shake it off"

# Puts Taylor's neck

exit unless repeat("Baby, I'm just gonna shake").include?("shake, shake, shake, shake, shake")
exit unless repeat("Heart-breakers gonna break").include?("break, break, break, break, break")


exit unless repeat("And the fakers gonna fake").include?("fake, fake, fake, fake, fake")
exit unless double("I shake it off") == "I shake it off, I shake it off"

# Puts Taylor's shoulders

exit unless stutter("I shake it off, I shake it off") == ("I, I, I shake it off, I shake it off")
