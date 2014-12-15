# An exercise exercise!
#
# Part 1: Attempt to do ten jumping jacks! Every jump you do uses exactly 15
# points of energy. You begin with one hundred points of energy. If your energy
# falls to 0 or below, then take a rest -- don't do a jumping jack and instead
# regain 5 energy.
energy_points = 100
$stdout.puts("How many jumping jacks would you like to do?")
total_jumps = $stdin.gets.chomp.to_i

# def jumping_jacks(total_jumps, energy_points)
#   count = 0
#   while(total_jumps > 0)
#     if(energy_points >= 15)
#       total_jumps -= 1
#       count += 1
#       energy_points -= 15
#       puts("Jumping Jack #{count}")
#         sleep(1)
#     else
#       puts("I am exhausted(#{energy_points} energy points). Lets take a break")
#       energy_points +=5
#       sleep(1)
#     end
#   end
# end

# jumping_jacks(total_jumps, energy_points)

total_jumps.times do
    if(energy_points >= 15)
    total_jumps -= 1
    energy_points -= 15
    puts("Jumping Jack")
  else
    energy_points +=5
    puts("I am exhausted lets take a break")
  end
end

puts("Why was 6 afraid of 7?")
sleep (2)
7.upto(9){ |i| puts "#{i} "}

# Also -- what is it called when we use a variable declared outside of the block
# on the inside of the block?
#
#Method 1
energy = 100

def jumping_jacks(number, energy)
  count = 0
  while count < number
    if energy >= 15
      count += 1
      energy -= 15
      puts "Did #{count} jumping jacks"
    else
      energy += 5
      puts "Waiting, #{energy} energy left."
    end
  end
end

puts "Part 1: Jumping Jacks"

jumping_jacks(10, energy)

# Method 2
energy = 100
count = 0

10.times do
  if energy <= 0
    energy += 5

    $stdout.puts("You're resting. You have done " + count.to_s + " jumping jacks and your current enery level is " + energy.to_s)
  else
    energy -= 15
    count += 1
    $stdout.puts("You have done " + count.to_s + " jumping jacks and your current enery level is " + energy.to_s)
  end
end

# Method 3

10.times { |i| puts "jumping jack " + i.to_s }

#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 2: Add to the above a countdown of reps left!
#
# Also -- what is the return value of the .times method?
#

#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 3: Rewrite the above exercise to happen in three groups of ten, counting
# down from 30 total, with a small breather in between that adds 25 energy
# points.'  3:32 PM
 students.length.times { |i| puts "student #{students[i]}" }'

students.class


