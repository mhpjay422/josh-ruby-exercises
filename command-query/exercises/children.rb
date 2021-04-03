class Children
  attr_reader :kids
  def initialize()
    @kids = []
  end

  def eldest 
    kids.max_by {|kid| kid.age}
  end

  def <<(child) 
    @kids.push(child)
  end
end