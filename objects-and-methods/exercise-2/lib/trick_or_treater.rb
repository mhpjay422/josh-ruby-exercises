class TrickOrTreater
  attr_reader :costume, :bag, :sugar_level
  def initialize(costume, bag=[], sugar_level=0)
    @costume = costume
    @bag = bag
    @sugar_level = sugar_level
  end

  def dressed_up_as
    @costume.style
  end

  def empty?
    @bag.length == 0
  end

  def has_candy?
    !self.empty?
  end

  def candy_count
    @bag.length
  end

  def eat 
    candy = @bag.pop
    @sugar_level += candy.sugar
  end

  def sugar_level
    @sugar_level
  end
  
end