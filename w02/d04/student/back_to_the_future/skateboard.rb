require 'date'

class Skateboard < Vehicle

<<<<<<< HEAD
  attr_accessor :location_in_time

  def initialize(description, capacity = 1, location)
    super(description, capacity, location)
=======
  def initialize (d,l)
    super(d,1,l)
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

end
