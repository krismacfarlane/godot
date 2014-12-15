<<<<<<< HEAD
class McDonalds

  attr_accessor :capacity, :open_at, :close_at, :yelp, :manager
  attr_reader :location

  def initialize (location, capacity, open_at, close_at, yelp, manager)
    @location = location
    @capacity = capacity
    @open_at = open_at
    @close_at = close_at
    @yelp = yelp
    @manager = manager
    @served = 0
  end

  def is_open_at?(time)
    open = @open_at.gsub("am","").gsub("pm","").gsub(":","").to_i
    if @close_at.include?("pm")
      close = @close_at.gsub("am","").gsub("pm","").gsub(":","").to_i + 1200
    else
      close = @close_at.gsub("am","").gsub("pm","").gsub(":","").to_i
    end
    (open <= time.gsub(":","").to_i) && (time.gsub(":","").to_i <= close)
  end

  GREETING = "Welcome to McDonald's, may I take your order?"

  def order(num, menu_item)
    @served += num
    $stdout.puts("#{GREETING} Here is your order of #{num} #{menu_item}. Thank you!")
  end

  attr_reader :served

  @@served = 0

=======
#Creating a MCDONALDS Class
class McDonalds

  attr_accessor:capacity,:open_time,:closing_time,:yelp_page,:manager
  attr_reader:location,:served,:greeting

  def initialize(l,c,ot,ct,yp,m)
    @location     = l
    @capacity     = c
    @open_time    = ot
    @closing_time = ct
    @yelp_page    = yp
    @manager      = m
    @served       = 0
  end

  @@served = 0
  GREETING= "Welcome to McDonald's, may I take your order?"
# ///////INSTANCE VARIABLES//////////////////
  def order (num,menu_item)
    @served  += num
    @@served += num
    return "#{GREETING}\nHere is your order of #{num} #{menu_item}. Thank you."
  end

  def is_open_at?(time)
    num_time = time.gsub(":",'').to_i
    opens_at = @open_time.gsub(":",'').to_i
    closes_at = @closing_time.gsub(":",'').to_i
    return opens_at<=num_time && num_time<=closes_at
  end

  def has_mc_rib?
    false
  end

# ///////////CLASS VARIABLES/////////////////
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
  def self.served
    @@served
  end

<<<<<<< HEAD
  attr_reader :mc_rib

  @@mc_rib = false

  def self.mc_rib
    @@mc_rib
  end

  def has_mc_rib?
    @@mc_rib
  end

  def McDonalds.toggle_mc_rib
    McDonalds.toggle_mc_rib
  end

end



=======
  def self.mc_rib
    false
  end
end
>>>>>>> 6eba04b029e8da1a83cf640b9242378c1de84e8d
