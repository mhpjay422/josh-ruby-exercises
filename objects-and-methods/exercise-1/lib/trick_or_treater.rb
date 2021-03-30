class TrickOrTreater 

  attr_reader :costume, :bag
  def initialize(costume="Cowboy", bag=[])
    @costume = costume
    @bag = bag
  end

  def dressed_up_as
    @costume.style
  end

  def empty?
    @bag.size == 0
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.length
  end

  def eat
    bag.pop
  end
end