class Clearance
  attr_reader :items
  def initialize()
    @items = []
  end

  def best_deal
    return nil if @items.length == 0
    sorted = @items.sort_by {|item| item.price[:discount] / item.price[:price].to_f }
    sorted[-1].name
  end

  def <<(item) 
    @items.push(item)
  end
end