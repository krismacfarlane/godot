require 'pry'
require_relative 'product'
require_relative 'bike'
require_relative 'shirt'

my_bike = Bike.new(200, "Bike Brand", 2, 15)

my_shirt = Shirt.new(20, "Shirt Brand", "medium", "green", "check out my cool shirt!")
