class Bike < Product

<<<<<<< HEAD
  attr_reader :gear_count, :tire_diameter

  def initialize(price, brand, gear_count, tire_diameter)
    super(price, brand)
    @gear_count = gear_count
    @tire_diameter = tire_diameter
=======
  attr_accessor:gear_count,:tire_diameter

  def initialize(price,brand,gc,td)
    super(price,brand)
    @gear_count = gc
    @tire_diameter = td
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

end
