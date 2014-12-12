require 'date'

class Car < Vehicle

  attr_reader :year_produced, :make, :model, :fuel
  attr_accessor :color, :location_in_time

  def initialize(capacity, year_produced, make, model, color, location, description = "#{color} #{year_produced} #{make} #{model}")
    super(description, capacity, location)
    @year_produced = year_produced
    @make = make
    @model = model
    @color = color
    @passengers = []
    @fuel = false
  end


  def refuel
    if @fuel == false
      fuel = true
      $stdout.puts("#{fuel}. No need to top off!")
    end
  end

  def go_to(location)
    if @fuel == false
      fuel = false
      $stdout.puts("#{fuel} is false")
    end
  end

end
