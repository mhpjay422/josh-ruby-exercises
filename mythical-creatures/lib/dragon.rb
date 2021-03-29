class Dragon 
  attr_reader :name, :color, :rider
  def initialize(name="Ramoth", color="gold", rider="Lessa")
    @name = name
    @color = color
    @rider = rider
    @food_level = 0
  end

  def hungry? 
    return true if @food_level < 3
    false
  end

  def eat
    @food_level += 1
  end
end