class Money
  attr_reader :total
  def initialize()
    @total = 0
  end

  def amount 
    total
  end

  def earn(amount)
    @total += amount
  end
end