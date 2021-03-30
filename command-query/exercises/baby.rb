class Baby
  attr_reader :tired
  def initialize(tired=true)
    @tired = tired
  end

  def tired?
    @tired
  end

  def nap
    @tired = false
  end
  
end