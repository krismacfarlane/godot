class Student < Human

  attr_reader :homeworks

  def initalize(name)
    puts "I occur before super gets called"
    super(name)
    puts "I occur after super gets called"
    @homeworks = []
  end

  def do_homework(assignment)
    homeworks << assignment
  end

end
