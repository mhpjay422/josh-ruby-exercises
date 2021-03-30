class Bag
  attr_reader :count, :candies
  def initialize(count=0, candies=[])
    @count = count
    @candies = candies
  end

  def empty?
    candies.length == 0
  end

  def <<(item)
    candies.push(item)
    @count = candies.length
  end

  def contains?(target_candy)
    candies.each {|candy| return true if candy.type == target_candy}
    false
  end
end
# require "pry"; binding.pry