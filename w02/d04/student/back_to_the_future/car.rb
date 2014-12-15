require 'date'
<<<<<<< HEAD

class Car < Vehicle

  attr_reader :year_produced, :make, :model, :fuel
  attr_accessor :color, :location_in_time

  def initialize(capacity, year_produced, make, model, color, location, description = "#{color} #{year_produced} #{make} #{model}")
    super(description, capacity, location)
    @year_produced = year_produced
    @make = make
    @model = model
    @color = color
=======
require_relative 'modules/time_travelable'

class Car < Vehicle

  attr_accessor:color,:location_in_time
  attr_reader:fuel

  def initialize(ca,yp,ma,mo,co,l)
    description = "#{co} #{yp} #{ma} #{mo}"
    super(description,ca,l)
    @year_produced = yp
    @make = ma
    @model = mo
    @color = co
    @location_in_time = Date.today
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
    @passengers = []
    @fuel = false
  end

<<<<<<< HEAD

  def refuel
    if @fuel == false
      fuel = true
      $stdout.puts("#{fuel}. No need to top off!")
=======
  def refuel
    if @fuel == false
      @fuel = true
    else
      $stderr.puts "No need to top off!"
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
    end
  end

  def go_to(location)
<<<<<<< HEAD
    if @fuel == false
      fuel = false
      $stdout.puts("#{fuel} is false")
    end
  end
=======
    if passengers.count == 0
      return "This #{@description} is empty!"
    elsif @fuel == false
      return "The gas tank is empty!"
    else
      @location = location
      @fuel = false
       return "This #{@description} is off to #{@location}"
     end
   end
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

end
