<<<<<<< HEAD
require_relative './bond_data.rb'

require 'pry'
# # 1. Combine your knowledge of iteration and arithmetic to determine the cumulative
# gross of all the Bond films. Save it to a sensibly-named variable.

cumulative_gross = []
BOND_DATA.each {|gross| cumulative_gross.push( gross[:gross] ) }

no_space = []
cumulative_gross.each {|grossing| no_space.push (grossing.delete ", ")}

no_dollar = []
no_space.each {|grossing| no_dollar.push (grossing.delete "$")}

gross_integer = []
no_dollar.each {|grossing| gross_integer.push(grossing.to_i)}

total_gross = gross_integer.inject(:+)
$stdout.puts("The cumulative gross of all the Bond films is $#{total_gross}.")

# 2. Create a new array with the names of the all actors who have ever played Bond, but with no
# duplicates. (One Roger Moore is more than enough.) Assign it to a sensibly-named variable.

all_bonds = []
BOND_DATA.each {|bonds| all_bonds.push( bonds[:actor] ) }

unique_bonds = all_bonds.uniq

$stdout.puts("#{unique_bonds} are the actors who have played James Bond.")



# 3. Create a new array of strings from BOND_DATA with the names of al the Bond films. Assign it to
# a sensibly-named variable.

all_films = []
BOND_DATA.each {|films| all_films.push( films[:title] ) }

bond_films = all_films
$stdout.puts("#{bond_films} are the titles of the Bond films.")

# 4. Create a new array of hashes of only the bond films released on odd-numbered years. Assign it
# to a sensibly-named variable.

odd_years = []
BOND_DATA.each {|odd_ones| odd_years.push( odd_ones[:year] ) }

odd_years_as_ints = []
odd_years.each {|years_as_ints| odd_years_as_ints.push(years_as_ints.to_i)}

def odd_year?(year)
  year.odd? == true
end

odd_years_odd = []
odd_years_as_ints.each do |are_you_odd|
  if odd_year?(are_you_odd)
    odd_years_odd.push(are_you_odd.to_s)
  end
end

$stdout.puts("#{odd_years_odd} are the odd years that Bond films came out.")

# 5. Create a variable called worst_grossing_bond. Use all the tools at your disposal (and perhaps
# one or two you have yet to discover) to iterate through all the films and return the film with the
# lowest gross. Store the returned film hash in the variable worst_grossing_bond.

# bad_bond = []
# BOND_DATA.each {|bad_bonds| bad_bond.push( bad_bonds[:gross] ) }

worst_grossing_bond = gross_integer.min

$stdout.puts("The worst grossing Bond film made $#{worst_grossing_bond}.")

# 6.Similarly, create a variable called highest_grossing_bond and use your programming powers to return the highest grossing film hash, storing it to highest_grossing_bond.

highest_grossing_bond = gross_integer.max

$stdout.puts("The highest grossing Bond film made $#{highest_grossing_bond}.")

# binding.pry
=======
require 'pry'
require_relative "./bond_data"

total_movie_gross = 0
BOND_DATA.each do |movie|
  movie_gross = movie[:gross]
  movie_gross_no_symbols = movie_gross.gsub(",",'').gsub("$",'')
  total_movie_gross += movie_gross_no_symbols.to_i
end
# puts("$#{total_movie_gross} is how much money all the bond films made.")

actor_list = []
BOND_DATA.each do |movie|
  actor_list.push(movie[:actor])
  actor_list.uniq!
end
# puts(actor_list)

film_titles = []
BOND_DATA.each do |movie|
  film_titles.push(movie[:title])
end
# puts(film_titles)

bond_hash_array = []
BOND_DATA.each do |movie|
  year_made = movie[:year]
  if( year_made%2 == 1 )
    bond_hash_array.push({
      :title => movie[:title],
      :year => movie[:year],
      :actor => movie[:actor],
      :gross => movie[:gross]
    })
  end
end
# puts(bond_hash_array)
lowest_grossing_movie = 1000000000
worst_grossing_bond = {}
BOND_DATA.each do |movie|
  current_movie_gross = movie[:gross]
  current_movie_gross = current_movie_gross.gsub(",",'').gsub("$",'').to_i
  if current_movie_gross < lowest_grossing_movie
    lowest_grossing_movie = current_movie_gross
    worst_grossing_bond = {
      :title => movie[:title],
      :year => movie[:year],
      :actor => movie[:actor],
      :gross => movie[:gross]
    }
  end
end
# puts(worst_grossing_bond)

largest_grossing_movie = 0
highest_grossing_bond = {}
BOND_DATA.each do |movie|
  curr_movie_gross = movie[:gross]
  curr_movie_gross = curr_movie_gross.gsub(",",'').gsub("$",'').to_i
    # binding.pry
  if curr_movie_gross > largest_grossing_movie
    largest_grossing_movie = curr_movie_gross
    highest_grossing_bond = {
      :title => movie[:title],
      :year => movie[:year],
      :actor => movie[:actor],
      :gross => movie[:gross]
    }
  end
end
# puts(highest_grossing_bond)

# movies_per_actor = []
# BOND_DATA.each do |movie|
#   actor_name = movie[:actor]
#   movies_per_actor.push(actor_name => 1)
#   if(movies_per_actor[])
# end
# puts(movies_per_actor)
save_movie_gross = ""
def get_gross_for(movie_name, array)
  array.each do |movie|
    find_movie = movie[:title]
    if find_movie == movie_name
      puts("#{movie_name} made #{movie[:gross]}")
    end
  end
end

get_gross_for("For Your Eyes Only", BOND_DATA)







>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d


