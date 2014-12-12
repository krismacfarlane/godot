require 'date'

class Vehicle

  attr_reader :description, :capacity, :location, :passengers
  attr_accessor :location_in_time

  def initialize(description, capacity, location)
    @description = description
    @capacity = capacity
    @location = location
    @passengers = []
    @location_in_time = Date.today
  end

  def add_passenger(name)
    passengers << name
  end

  def in_danger?
    if @passengers > @capacity
      return true
    end
  end

  def go_to(location)
    if @passengers >= 1
      @location = go_to
      puts "And we're off!"
    end
  end

end
