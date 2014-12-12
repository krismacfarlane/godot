require 'date'

class Train < Vehicle

  attr_accessor :location_in_time

  def pull_the_rope
    puts "Woo woooo!"
  end

  def go_to(location)
    pull_the_rope
    super(location)
  end

end
