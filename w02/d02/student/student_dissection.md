class Student
  def initialize(f_name, l_name, occupation)
    @first_name       = f_name
    @last_name        = l_name
    @prior_occupation = occupation
  end

  def first_name=(x)
    @first_name = x
  end

  def first_name
    return @first_name
  end
end

student_one = Student.new("Chadd", "Clairmont", "Scuba Diving Instructor")

student_two = Student.new("Kristen", "Macfarlane", "Academic")

<!-- What is class ?
  keyword that starts the class definition
What is Student ?
  the name of the class that is being created
What type of method is first_name= ?
  setter method
What type of method is first_name ?
  getter method
What type of variable is @first_name ?
  an instance variable
What does the initialize method do?
  sets up the initial data/foundation for a new object
When does the initialize method execute?
  automatically executes when method .new appears
What's the difference between a class and an instance?
  an instance variable is a method within a class
What type of object does the variable student_one hold?
  holds a new object/instance of the Student class
What type of object does the variable student_two hold?
  holds a new object/instance of the Student class
What will the return value of student_one.first_name be?
  Chadd
What will the return value of student_two.first_name be?
  Kristen -->
