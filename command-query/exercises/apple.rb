class Apple 
  attr_reader :ripe_level
  def initialize()
    @ripe_level = 0
  end

  def ripe?
    ripe_level >= 3 ? true : false
  end

  def wait_a_week
    @ripe_level += 1
  end
end