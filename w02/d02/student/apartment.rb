require 'pry'

class Apartment

  attr_accessor :unit, :num_beds, :num_baths, :tenants

  def initialize(unit, num_beds, num_baths, tenants="vacant")
    @unit = unit
    @num_beds = num_beds
    @num_baths = num_baths
    @tenants = tenants
  end

end

#HELP! Can't figure this one out...
def price(apartment.num_beds, apartment.num_baths)
  price_beds = apartment.num_beds * 1000
  price_baths = apartment.num_baths * 500
  price = price_beds + price_baths
  puts "#{price}"
end

apt1 = Apartment.new("A", 3, 2)
price(apt1.num_beds, apt1.num_baths)
puts ("The first apartment's unit number is #{apt1.unit}. It has #{apt1.num_beds} beds and #{apt1.num_baths} baths. It is #{apt1.tenants}. It costs #{price(apt1)}.")

binding.pry
