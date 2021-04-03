class Cupcakes 
  attr_reader :container
  def initialize()
    @container = []
  end

  def sweetest 
    @container.max_by {|cupcake| cupcake.sugar}
  end

  def <<(cupcake)
    @container << cupcake
  end
end