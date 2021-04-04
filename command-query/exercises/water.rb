class Water
  attr_reader :temp
  def initialize()
    @temp = 295
  end

  def temperature
    temp
  end

  def heat 
    @temp += 1
  end
end