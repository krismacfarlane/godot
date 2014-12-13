class Shirt < Product

  attr_reader :size, :color, :text

  def initialize(price, brand, size, color, text)
    super(price, brand)
    @size = size
    @color = color
    @text = text
  end

end
