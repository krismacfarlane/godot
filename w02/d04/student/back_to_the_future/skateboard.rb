require 'date'

class Skateboard < Vehicle

  attr_accessor :location_in_time

  def initialize(description, capacity = 1, location)
    super(description, capacity, location)
  end

end
