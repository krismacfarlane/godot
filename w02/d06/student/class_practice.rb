class Celebrity < Human

  def initialize
    super
    self.setup #self refers to the instance
  end

  def setup
  end

  def self.parse #self refers to the class
  end

end
