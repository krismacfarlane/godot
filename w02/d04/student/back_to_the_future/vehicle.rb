require 'date'

class Vehicle

<<<<<<< HEAD
  attr_reader :description, :capacity, :location, :passengers
  attr_accessor :location_in_time

  def initialize(description, capacity, location)
    @description = description
    @capacity = capacity
    @location = location
    @passengers = []
    @location_in_time = Date.today
=======
  attr_accessor:passengers,:location_in_time
  attr_reader:description,:capacity,:location

  def initialize(d,c,l)
    @description = d
    @capacity    = c
    @location    = l
    @location_in_time = Date.today
    @passengers  = []
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

  def add_passenger(name)
    passengers << name
  end

  def in_danger?
<<<<<<< HEAD
    if @passengers > @capacity
      return true
    end
  end

  def go_to(location)
    if @passengers >= 1
      @location = go_to
      puts "And we're off!"
=======
    passengers.count > @capacity
  end

  def go_to(location)
    if passengers.count == 0
      return "This #{@description} is empty!"
    else
      @location = location
      return "This #{@description} is off to #{@location}"
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
    end
  end

end
