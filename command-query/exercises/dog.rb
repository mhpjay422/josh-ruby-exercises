class Dog
  attr_reader :hungry
  def initialize()
    @hungry = true
  end

  def hungry?
    hungry
  end

  def eat 
    @hungry = false
  end
end