
<<<<<<< HEAD
# Strings and Arrays
#
# 1. Write the Ruby to split the string `contenders` into an array of 4 items.

contenders = "Alabama, Florida State, Oregon, Ohio State"
$stdout.puts(contenders.split(", "))

# 2. Write the Ruby to turn the array `contenders` into the string:
#    "Alabama, Florida State, Oregon, Ohio State are in the playoffs."

contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
$stdout.puts("#{contenders.join(", ")} are in the playoffs.")

# Data Structures
#
# Write the Ruby to discover what type of data structure the variable
# `contenders` is.

$stdout.puts(contenders.class)

# Arrays
#
=======
# # # Strings and Arrays
# # #
# # # 1. Write the Ruby to split the string `contenders` into an array of 4 items.

# # contenders = "Alabama, Florida State, Oregon, Ohio State"
# # contenders = contenders.split(", ")

# # # 2. Write the Ruby to turn the array `contenders` into the string:
# # #    "Alabama, Florida State, Oregon, Ohio State are in the playoffs."

# # contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
# # contenders = contenders.join(", ") + " are in the playoffs."
# # $stdout.puts(contenders)

# # # Data Structures
# # #
# # Write the Ruby to discover what type of data structure the variable
# # `contenders` is.
# puts(contenders.class)
# # Arrays
# #
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
# 1. Use Ruby to create an array named `contenders` in TWO DIFFERENT WAYS with
#    the following items:
#      a. "Alabama"
#      b. "Florida State"
#      c. "Texas Christian University (TCU)"
#      d. "Baylor"
contenders = ["Alabama", "Florida State", "Texas Christian University (TCU)", "Baylor"]
contenders2 = []
contenders2.push("Alabama").push("Florida State").push("Texas Christian University (TCU").push("Baylor")

<<<<<<< HEAD
contenders = ["Alabama", "Florida State", "Texas Christian University (TCU)", "Baylor"]

contenders = Array.new(["Alabama", "Florida State", "Texas Christian University (TCU)", "Baylor"])

=======
puts(contenders)
puts(contenders2)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
# 2. Access the 3rd item in the array `contenders`.
puts(contenders[2])
puts(contenders2[2])

<<<<<<< HEAD
$stdout.puts(contenders[2])

=======
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
# 3. Set the 4th item as "Texas Christian University (TCU),"
#    and the 3rd item as "Oregon."
contenders[3] = "Texas Christian University (TCU)"
contenders[2] = "Oregon"

contenders2[3] = "Texas Christian University (TCU)"
contenders2[2] = "Oregon"

contenders.insert(2, "Oregon")
$stdout.puts(contenders)

# 4. Print the number of items in the array.
puts(contenders.count)
puts(contenders2.length)

<<<<<<< HEAD
$stdout.puts(contenders.count)

# 5. Remove the last item in the array, then add another item to the end of the
=======
# 5. Remove the last item in the array, then add another item to the end of the
contenders.pop
contenders.push("Ohio State")
puts(contenders)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
#   array that is the string "Ohio State."

contenders.pop
contenders.push("Ohio State")
$stdout.puts(contenders)

# 6. Add the number 1 to the beginning of the array, then remove the first item
#    in the array and print it.
puts(contenders2.unshift(1))
puts(contenders2.shift)


contenders.

# Hashes
#
# 1. Use Ruby to create a "hash" named `contenders` with the pairs:
#      a. "Alabama" and "SEC"
#      b. "Florida State" and "ACC"
#      c. "Texas Christian University (TCU)" and "Big 12"
#      d. "Baylor" and "Big 12"
#      e. "Oregon" and "Pac-12"
#      f. "Ohio State" and "Big Ten"

<<<<<<< HEAD
# 2. Access the value with the key "Baylor."

# 3. Set the value with the key "Ohio State" to "Big 10."

# 4. List the unique teams (keys) in the hash. List the unique values
#    (conferences) in the hash.
=======
# contenders = {
#   "Alabama" => "SEC",
#   "Florida State" => "ACC",
#   "Texas Christian University(TCU)" => "Big 12",
#   "Baylor" => "Big 12",
#   "Oregon" => "Pac-12",
#   "Ohio State" => "Big Ten"
# }
# # 2. Access the value with the key "Baylor."
# puts(contenders["Baylor"])
# # 3. Set the value with the key "Ohio State" to "Big 10."
# puts(contenders["Ohio State"] = "Big 10")
# # 4. List the unique teams (keys) in the hash. List the unique values
# #    (conferences) in the hash.
# puts(contenders.keys)
# puts(contenders.values)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

# Loops
#
# 1. Use a Ruby while loop to print out every item in an array in all capitals.
# num = 0
# while(num < contenders.length)
#   puts contenders[num].upcase
#   num = num + 1
# end

# 2. Use a basic Ruby loop (loop do; ... end) and a break statement to do the
#    above.
number = 0
loop do
  puts contenders[number].upcase
  number += 1
  break if number >= contenders.count
end

# Methods
<<<<<<< HEAD
#
=======

def fun_output_method(array_of_strings)
  num = 0
  while(num < array_of_strings.length)
  output_string = array_of_strings[num]
  if output_string == "Ohio State"
    puts("#{output_string} will Win!")
  else
    puts("#{output_string} might Win!")
  end
  num = num + 1
  end
end

fun_output_method(contenders)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
# Define a new method that takes an array of strings as input. It prints to the
# standard output every item in the array followed by the words: " might win!",
# unless the string's contents is "Ohio State", in which case it adds the words
# " will win!". Finally, it returns the number of items in the array.

<<<<<<< HEAD
# this is called an enumerator
# def print_hip_hip_hooray(num_of_times)
#   i = 0
#   while i < num_of_times
#     $stdout.puts("Hip hip, hooray!")
#     i += 1
#   end
#   true
# end

# print_hip_hip_hooray(5)

# ^^ this is the hard way

# the easier way:
3.times { puts "Hip hip hooray!" }
shout = "hip hip hooray"
3.times do puts "hip hip hooray" end
=======
def hip_hip_hooray (number)
  i =0
  loop do
    puts "hip hip Hooray"
    i += 1
    break if i >= number
  end
  return number
end

puts(hip_hip_hooray(7))
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
