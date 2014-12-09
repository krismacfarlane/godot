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

