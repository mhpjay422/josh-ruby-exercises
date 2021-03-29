class Dragon 
  attr_reader :name, :color, :rider
  def initialize(name="Ramoth", color="gold", rider="Lessa")
    @name = name
    @color = color
    @rider = rider
    @hungry = 0
  end

  def hungry? 
    return true if @hungry < 3
    false
  end

  def eat
    @hungry += 1
  end
end