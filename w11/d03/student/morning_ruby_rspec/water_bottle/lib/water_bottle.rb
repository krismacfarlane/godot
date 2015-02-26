require 'pry'
require 'json'

class WaterBottle

  attr_reader :brand, :capacity

  def initialize(brand, capacity)
    @capacity = capacity
    @brand = brand
    @amount = 0
  end

  def empty?
    @amount <= 0
  end

  def fill
    @amount = @capacity
  end

  def measure
    @amount
  end

  def squirt
    if @amount > 0
      @amount -= 4
    else
      false
    end
  end

  def to_json
    @info = {}
    @info["capacity"] = @capacity
    @info["brand"] = @brand
    @info.to_json
  end

end
