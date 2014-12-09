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
