class Bag
  attr_reader :candies, :take
  def initialize(candies=[], take=[])
    @candies = candies
    @take = take
  end

  def empty?
    @candies.length == 0  
  end

  def count
    @candies.length
  end

  def <<(item)
    candies.push(item)
  end

  def contains?(candy)
    @candies.each do |can| 
      # require "pry"; binding.pry
      return true if can.type == candy
    end
    false
  end

  def grab(candy)
    @candies.each do |can|
      if candy == can.type
        @candies.delete(can)
        return can
      end
    end
  end

  def take(num)
    return @candies.pop if num == 1

    num.times do 
      @take << @candies.pop
    end
    
    @take
  end
  
end