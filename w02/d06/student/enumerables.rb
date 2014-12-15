require 'pry'

arr = [
  "kristen",
  "andrea",
  "norman"
]

capitalized_names = arr.map do |name|
  name.capitalize
end

short_names = arr.select do |name|
  name.length < 7
end

binding.pry
