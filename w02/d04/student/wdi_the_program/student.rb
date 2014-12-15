class Student < Human

<<<<<<< HEAD
  attr_reader :homeworks

  def initalize(name)
    puts "I occur before super gets called"
    super(name)
    puts "I occur after super gets called"
    @homeworks = []
  end

  def do_homework(assignment)
    homeworks << assignment
=======
  attr_accessor:homework

  def initialize(name)
    super
    @homework = []
  end

  def do_homework(work)
    @homework.push(work)
    speak("I gotta do WORK")
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  end

end
