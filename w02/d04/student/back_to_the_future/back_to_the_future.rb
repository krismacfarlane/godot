require 'pry'
require_relative './vehicle'
require_relative './train'
require_relative './skateboard'
require_relative './car'
require_relative './modules/time_travelable.rb'

orient_express = Train.new('passenger train', 100, 'Istanbul')
"Woo woooo!" == orient_express.pull_the_rope

my_sweet_deck = Skateboard.new('SantaCruz™', 'Washington Square Park')

# delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
# delorean.add_passenger('Marty McFly')
# delorean.refuel             #=> true
# delorean.refuel             #=> true
# delorean.go_to('the dance') #=> "You're now at the dance."
# delorean.fuel               #=> false

# delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
# delorean.location_in_time == Date.today

delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
delorean.extend(TimeTravelable) # Yahoo!
delorean.go_back_in_time(3, 3, 2)

binding.pry


