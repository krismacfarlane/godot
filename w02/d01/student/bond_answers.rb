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


