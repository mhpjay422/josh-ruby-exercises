class LeatherChair
  attr_reader :faded
  def initialize(faded=false)
    @faded = faded
  end

  def faded?
    @faded == true
  end
  
  def expose_to_sunlight
    @faded = true
  end
end