require 'pry'
<<<<<<< HEAD
<<<<<<< HEAD
require_relative 'human'
require_relative 'teacher'
require_relative 'student'



# phil = Teacher.new
# phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")
# phil.teach("Inheritance is when objects of one class gain the abilities of another class.")

# mr_lloyd = Teacher.new
# mr_lloyd.shout("What in sam hell are you doing now?")

kristen = Student.new("Kristen", 23)
# kristen.shout("I think I am understanding this")
binding.pry
# kristen.speak("I'm hungry")
# kristen.do_homework("w02/d03 hw")
# $stdout.puts(kristen.homeworks)

# kristen.show_hw


# [2] Pry(main)> phil.class
# Teacher < Human
# [3] Pry(main)> phil.class.superclass
# Human < Object
# [4] Pry(main)> phil.class.superclass.superclass
# Object < BasicObject
# [5] Pry(main)> phil.class.superclass.superclass.superclass
# BasicObject
# [6] Pry(main)> phil.class.superclass.superclass.superclass.superclass
# nil
=======
require_relative 'human.rb'
require_relative 'teacher.rb'
require_relative 'student.rb'
=======
require_relative 'human'
require_relative 'teacher'
>>>>>>> 5c0805cd5d2e70cf09eee0aff4c3d19c3a7e0b44

phil = Teacher.new
phil.speak("Hello and Welcome. Today, I'm going to talk about class hierarchies")
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

