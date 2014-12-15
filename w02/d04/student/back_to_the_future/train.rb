require 'date'

class Train < Vehicle

<<<<<<< HEAD
  attr_accessor :location_in_time

  def pull_the_rope
    puts "Woo woooo!"
=======
  def pull_the_rope
    "Woo Woooo!"
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

  def go_to(location)
    pull_the_rope
    super(location)
  end

end
