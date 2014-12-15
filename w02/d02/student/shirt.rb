<<<<<<< HEAD
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
=======
# Creating the Shirt Class
class Shirt

  def initialize(s,c,t)
    @size = s
    @color = c
    @text = t
  end
# //////////CREATING SETTER METHODS//////////////
  def set_shirt_size=(s)
    @size = s
  end

  def set_shirt_color=(c)
    @color = c
  end

  def set_shirt_text=(t)
    @text = t
  end
#/////////END OF SETTER METHODS///////////////////
# ////////CREATING GETTER METHODS/////////////////
  def get_shirt_size
    return @size
  end

  def get_shirt_color
    return @color
  end

  def get_shirt_text
    return @text
  end
# ////////END OF GETTER METHODS///////////////////
end

pearl_jam_t = Shirt.new("Xtra_Large","nicely faded black","Yield Tour 1998")
puts(pearl_jam_t.get_shirt_text)

hipster_plaid = Shirt.new("Medium","red","NO LOGO")
puts("That #{hipster_plaid.get_shirt_color} shirt has #{hipster_plaid.get_shirt_text} written on it.")

david_beckham_jersey = Shirt.new("Large","white","Beckham")
puts("Thats a #{david_beckham_jersey.get_shirt_size} #{david_beckham_jersey.get_shirt_text} jersey!!! ")



>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
