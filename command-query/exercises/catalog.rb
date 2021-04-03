class Catalog
  attr_reader :items
  def initialize()
    @items = []
  end

  def cheapest 
    return nil if @items.length == 0
    cheapest = @items.reduce() {|cheap, item| item.price < cheap.price ? item : cheap}
    return cheapest.name
  end

  def <<(item)
    @items.push(item)
  end

end

