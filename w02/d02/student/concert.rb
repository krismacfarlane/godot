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
