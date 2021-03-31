class Adult
  attr_reader :num_drinks
  def initialize(num_drinks=0)
    @num_drinks = num_drinks
  end

  def consume_an_alcoholic_beverage
    @num_drinks += 1
  end

  def sober?
    @num_drinks <= 2
  end
end