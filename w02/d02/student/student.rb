<<<<<<< HEAD
class Student

  def initialize(f_name, l_name, old_job)
    @first_name = f_name
    @last_name = l_name
    @prior_occupation = old_job
  end

  def first_name= (x)
    @first_name = x
  end

  def first_name
    @first_name
  end

  def last_name= (y)
    @last_name = y
  end

  def last_name
    @last_name
  end

  def prior_occupation= (z)
    @prior_occupation = z
  end

  def prior_occupation
    @prior_occupation
  end

end

me = Student.new(
  "Kristen",
  "MacFarlane",
  "grad student"
)
# me.first_name = "Kristen"
# me.last_name = "MacFarlane"
# me.prior_occupation = "grad student"
puts "#{me.first_name} #{me.last_name} was a #{me.prior_occupation} before coming to GA."
=======
#Creating A Student Class
class Student

  def initialize(f_name,l_name,job)
    @first_name = f_name
    @last_name = l_name
    @prior_occupation = job
  end
#///////////////CREATING SETTER METHODS////////////
  def set_first_name=(name)
    @first_name = name
  end

  def set_last_name=(name)
    @last_name = name
  end

  def set_prior_occupation= (job)
    @prior_occupation = job
  end
# /////////////END OF SETTER METHODS///////////////
# ////////////CREATING GETTER METHODS//////////////
  def get_first_name
    return "First Name: " + @first_name
  end

  def get_last_name
    return "Last Name: " + @last_name
  end

  def get_prior_occupation
    return "Prior Occupation: " + @prior_occupation
  end
#//////////////END OF GETTER METHODS///////////////
end
# ////////////END OF CLASS DEFINITION//////////////
# /////////CREATES STUDENT OUTPUT METHOD///////////
def output_user (student)
  puts(student.get_first_name)
  puts(student.get_last_name)
  puts(student.get_prior_occupation)
end
# //////////ENDS STUDENT OUTPUT METHOD/////////////
first_student = Student.new("Chadd","Clairmont","Scuba Dive Instructor")
output_user(first_student)

# Or do it this way with inputs
second_student = Student.new('','','')
second_student.set_first_name= ("Kamari")
second_student.set_last_name= ("Aykes")
second_student.set_prior_occupation= ("Brain Scientist")
output_user(second_student)

>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
