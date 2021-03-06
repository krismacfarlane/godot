<<<<<<< HEAD
require_relative './mc_donalds.rb'
=======
#Creating Franchise Class
require 'pry'
require_relative "mc_donalds.rb"

class Franchise

end
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

chelsea_mcd = McDonalds.new(
  "335 8th Ave, New York, NY  10001",
  105, "07:00", "23:00",
  "http://www.yelp.com/biz/mcdonalds-new-york-136",
  "Marco Diaz"
)
<<<<<<< HEAD
chelsea_mcd.location #=> "335 8th Ave, New York, NY  10001"
chelsea_mcd.capacity #=> 105
chelsea_mcd.open_at  #=> "06:00"
chelsea_mcd.close_at #=> "23:00"
chelsea_mcd.yelp     #=> "http://www.yelp.com/biz/mcdonalds-new-york-136"
chelsea_mcd.manager  #=> "Marco Diaz"
=======
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

union_square_mcd = McDonalds.new(
  "39 Union Sq W, New York, NY  10003",
  60, "7:00am", "12:00am",
  "http://www.yelp.com/biz/mcdonalds-new-york-105",
  "Terry Johnson"
)
union_square_mcd.manager  = "Helina Senai"
union_square_mcd.capacity = 65
<<<<<<< HEAD
union_square_mcd.open_at  = "06:00"
union_square_mcd.close_at = "23:30"

$stdout.puts(chelsea_mcd.is_open_at?("23:30"))      # >> false
$stdout.puts(union_square_mcd.is_open_at?("23:30")) # >> true

chelsea_mcd.order(5, "happy meals")
union_square_mcd.order(1, "big mac")
union_square_mcd.order(1, "chicken sandwich")
union_square_mcd.order(1, "filet o' fish")

$stdout.puts(chelsea_mcd.served)      # >> 5
$stdout.puts(union_square_mcd.served) # >> 3

$stdout.puts(McDonalds.served)

$stdout.puts(McDonalds.mc_rib)        #=> false
$stdout.puts(chelsea_mcd.has_mc_rib?)

chelsea_mcd.order(2, "shakes")

$stdout.puts(McDonalds.mc_rib)        #=> false
$stdout.puts(chelsea_mcd.has_mc_rib?)
=======
union_square_mcd.open_time  = "06:00"
union_square_mcd.closing_time = "23:30"


$stdout.puts(chelsea_mcd.order(5, "happy meals"))
  # >> "Here is your order of 5 happy meals. Thank you."
$stdout.puts(union_square_mcd.order(1, "big mac"))          # >> ...
$stdout.puts(union_square_mcd.order(1, "chicken sandwich")) # >> ...
$stdout.puts(union_square_mcd.order(1, "filet o' fish"))    # >> ...

$stdout.puts(chelsea_mcd.served)      # >> 5
$stdout.puts(union_square_mcd.served)

McDonalds.served #/8
puts(McDonalds.served )# => 8

puts(McDonalds.mc_rib)
puts(chelsea_mcd.has_mc_rib?)



>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
