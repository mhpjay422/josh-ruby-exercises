class Pills
  attr_reader :bottle_count
  def initialize()
    @bottle_count = 60
  end

  def pop 
    @bottle_count -= 1
  end
end