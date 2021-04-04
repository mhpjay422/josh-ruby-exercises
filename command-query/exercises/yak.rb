class Yak
  attr_reader :hairy
  def initialize()
    @hairy = true 
  end

  def hairy?
    hairy
  end

  def shave
    @hairy = false
  end
end