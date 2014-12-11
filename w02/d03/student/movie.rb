require_relative './person.rb'

class Movie

  attr_accessor :title, :director

  def initialize(title)
    @title = title
  end

  def director=(d)
    d.is_a? Person
    @director = d
  end

end
