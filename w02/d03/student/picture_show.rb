# Part I
# Defined a new class in file called movie.rb
require_relative './movie.rb'
require_relative './person.rb'
require 'pry'

flick = Movie.new("Jaws")
# binding.pry

movie.director #=> nil
movie.director = "Richard Ayoade" # >> "Director can only be set to a Person object!"
movie.director #=> still nil!


# [1] Pry(main)> flick.class
# Movie < Object
# [2] Pry(main)> flick.is_a? Movie
# true
# [3] Pry(main)> flick.title
# "Jaws"
# [4] Pry(main)> flick.title.is_a? String
# true

