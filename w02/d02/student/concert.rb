<<<<<<< HEAD
class Concert

  attr_accessor :band, :city, :venue, :date

  def initialize(band, city, venue, date)
    @band = band
    @city = city
    @venue = venue
    @date = date
  end

end

best_night_of_life = Concert.new(
  "Built to Spill",
  "Chicago",
  "Metro",
  "May 8th, 2005"
)

embarrassing_first_concert = Concert.new(
  "Sugar Ray",
  "Milwaukee, Wisconsin",
  "Marcus Amphitheater",
  "sometime in 1998"
)

puts ("The best night of Travis' life was when #{best_night_of_life.band} played in #{best_night_of_life.city} on #{best_night_of_life.date} at #{best_night_of_life.venue}.")
puts ("Embarrassingly, Travis saw #{embarrassing_first_concert.band} #{embarrassing_first_concert.date} at #{embarrassing_first_concert.venue} in #{embarrassing_first_concert.city}.")
=======
#Creating a concert class
class Concert

  attr_accessor :band,:city,:venue,:date

  def initialize(b,c,v,d)
    @band = b
    @city = c
    @venue = v
    @date = d
  end
# //////////CREATING SETTER METHODS//////////////
  # def set_band=(b)
  #   @band = b
  # end

  # def set_city=(c)
  #   @city = c
  # end

  # def set_venue=(t)
  #   @venue = t
  # end

  # def set_date= (d)
  #   @date = d
  # end
#/////////END OF SETTER METHODS///////////////////
# ////////CREATING GETTER METHODS/////////////////
  # def get_band
  #   return @band
  # end

  # def get_city
  #   return @city
  # end

  # def get_venue
  #   return @venue
  # end

  # def get_date
  #   return @date
  # end
# ////////END OF GETTER METHODS///////////////////
end

best_night_of_my_life = Concert.new("Built to Spill", "Chicago","the Metro","May 8th, 2005")
puts("The best night of travis's life was in #{best_night_of_my_life.city}.")

embarrasing_first_concert = Concert.new("Sugar Ray","Milwaukee","Marcus Amphitheter","1988")
puts("Trav went to a #{embarrasing_first_concert.band} concert back in #{embarrasing_first_concert.date}.")
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
