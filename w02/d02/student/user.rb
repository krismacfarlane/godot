<<<<<<< HEAD
class User

  def initialize(x, y, z, a)
    @name   = x
    @email  = y
    @age    = z
    @gender = a
    @tweets = []
  end

  def tweets
    @tweets
  end
  # a setter method. this method sets an attribute (@name) of a User object to whatever value gets passed in as an argument
  def set_name= (x)
    @name = x
  end

  # this is a getter method
  def retrieve_name
    return @name
  end

  def email= (y)
    @email = y
  end

  def email
    return @email
  end

  def age= (z)
    @age = z
  end

  def age
    return @age
  end

  def gender= (a)
    @gender = a
  end

  def gender
    @gender
  end

end

first_user = User.new(
  "Kristen MacFarlane",
  "krismacfarlane@gmail.com",
  23,
  "female"
)
user_information = "#{first_user.retrieve_name}, #{first_user.email}, #{first_user.age}, #{first_user.gender}"
puts user_information
puts first_user.tweets

second_user = User.new("Norgie Terrier", "norm4prez@aol.com", 21, "male")
user_information = "#{second_user.retrieve_name}, #{second_user.email}, #{second_user.age}, #{second_user.gender}"
puts user_information
=======
#CREATING MY FIRST CLASS
class User
# The INITIALIZE METHOD creates a skeletal definition of an object in the user. It is also always called when a new user is created
  def initialize(x,y,z,a)
    @name= x
    @email= y
    @age= z
    @gender= a
    @tweets = []
  end
# A setter method sets an attribute (@attribute) of a User object to whatever value gets passed as an argument(x)
  def set_name=(name)
    @name = name
  end

  def set_email=(email)
    @email = email
  end

  def set_age=(age)
    @age = age
  end

  def set_gender=(gender)
    @gender = gender
  end
# /////////////END OF SETTER METHODS//////////////////////
# A getter method retrieves an attribute (@attribute) of a user and outputs it.
  def get_name
    return "Name: " + @name
  end

  def get_email
    return "Email: " + @email
  end

  def get_age
    return "Age: " + @age.to_s
  end

  def get_gender
    return "Gender: " + @gender
  end

  def get_tweets
    return @tweets
  end
# ///////////END OF GETTER METHODS/////////////////////
end

def output_user (student)
  puts(student.get_name)
  puts(student.get_email)
  puts(student.get_age)
  puts(student.get_gender)
end

first_user = User.new(
  "Travis Vander Hoop",
  "Travis@travitravtratrt",
  19,
  "female"
  )
output_user(first_user)
# first_user.set_name = ("Travis")
# first_user.set_email = ("@travtavta")
# first_user.set_age = 19
# first_user.set_gender = ("female")

second_user = User.new(
  "Brian",
  "Briguy@bravebrian.com",
  22,
  "male"
  )
output_user(second_user)
# second_user.set_name = ("Dain")
# second_user.set_age = 42
# second_user.set_email = ("@gatticasnarky")
# second_user.set_gender = ("male")
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d

