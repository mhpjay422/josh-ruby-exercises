class Clock
  attr_reader :time
  def initialize(time=6)
    @time = time
  end

  def wait 
    @time += 1
    @time = 1 if @time == 13
  end
end