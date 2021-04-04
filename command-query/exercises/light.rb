class Light
  attr_reader :illuminated 
  def initialize()
    @illuminated = false 
  end

  def on?
    illuminated
  end

  def turn_on 
    @illuminated = true
  end
end