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

  def self.served
    @@served
  end

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



