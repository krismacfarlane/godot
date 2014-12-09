class Shirt

  attr_accessor :size, :color, :text

  def initialize(size, color, text)
    @size = size
    @color = color
    @text = text
  end

end

pearl_jam_t = Shirt.new(
  "XL",
  "faded black",
  "Yield Tour 1998"
)

hipster_plaid = Shirt.new(
  "medium",
  "red",
  "NO LOGO"
)

david_beckham_jersey = Shirt.new(
  "large",
  "white",
  "Beckham"
)

pearl_jam_t.size=("medium")

puts("The #{pearl_jam_t.size} t-shirt is #{pearl_jam_t.color} and says #{pearl_jam_t.text} on it.")
puts("The #{hipster_plaid.size} t-shirt is #{hipster_plaid.color} and says #{hipster_plaid.text} on it.")
puts("The #{david_beckham_jersey.size} t-shirt is #{david_beckham_jersey.color} and says #{david_beckham_jersey.text} on it.")
