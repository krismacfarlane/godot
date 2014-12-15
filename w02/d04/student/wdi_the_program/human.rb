class Human

<<<<<<< HEAD
  def initialize(name, age)
    @name = name
    @age = age
=======
  def initialize(name)
    @name = name
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
    @walks_upright = true
  end

  def speak(x)
    puts x
  end

  def shout(y)
<<<<<<< HEAD
    puts "#{y.upcase}!!!!!!"
=======
    puts("#{y} RAWRRRRR!!!")
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

  def walks_upright?
    @walks_upright
  end

end
