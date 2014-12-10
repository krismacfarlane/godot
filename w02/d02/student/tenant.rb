class Tenant

  attr_accessor :f_name, :l_name, :born_on, :gender, :nickname, :occupation

  def initialize(f_name, l_name, born_on, gender)
    @f_name = f_name
    @l_name = l_name
    @born_on = born_on
    @gender = gender
  end

end

# HELP! I couldn't figure out how to get this method to work INSIDE the class definition
def full_name(tenant)
  if tenant.nickname.empty? == false
      puts "#{tenant.f_name} '#{tenant.nickname}' #{tenant.l_name}"
    elsif tenant.nickname.empty? == true
      puts "#{tenant.f_name} #{tenant.l_name}"
    end
end

tenant1 = Tenant.new("Kristen", "MacFarlane", "July 13, 1991", "female")
tenant1.nickname = "Mac"
tenant1.occupation = "student"
full_name(tenant1)

