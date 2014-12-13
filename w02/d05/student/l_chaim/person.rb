class Person

  attr_accessor :alive, :name, :age

  def alive?
    @alive = true
  end

  def initialize
    alive? == true
    @name
    @age = 0
  end

  def age!
    @age += 1
  end

  def brain
    @brain = {:memories => [],
      :loved_ones => "loved_ones",
      :interests => []}
  end

  def memories
    if age >= 3
      brain[:memories]
    elsif
      nil
    end
  end

  def remember(memory)
    if age >= 3
      brain[:memories].push({:age => age, :memory => memory})
    else
      nil
    end
  end

  def get_interested_in(interest)
    puts(interest)
  end

  def interests
    @interests = []
  end

end
