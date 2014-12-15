<<<<<<< HEAD
=======
require 'pry'
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
require_relative './person.rb'

class Movie

<<<<<<< HEAD
  attr_accessor :title, :director

  def initialize(title)
    @title = title
  end

  def director=(d)
    d.is_a? Person
    @director = d
  end

end
=======
  def initialize(title)
    @title = title
    @director = nil
  end
# //////////////SETTER METHODS///////////
  def set_title=(t)
    @title = t
  end

  def set_director=(d)
    if d == Person
      @director = d
    end
    puts "Director can only be set to a Person object!"
  end
# //////////////GETTER METHODS///////////
  def get_title
    @title
  end

  def get_director
    @director
  end

end




>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
