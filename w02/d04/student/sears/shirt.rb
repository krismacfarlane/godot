class Shirt < Product

<<<<<<< HEAD
  attr_reader :size, :color, :text

  def initialize(price, brand, size, color, text)
    super(price, brand)
    @size = size
    @color = color
    @text = text
=======
  attr_accessor:size,:color,:text

  def initialize (price,brand,s,c,t)
    super(price,brand)
    @size  = s
    @color = c
    @text  = t
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

end
