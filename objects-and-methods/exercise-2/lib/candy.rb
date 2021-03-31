class Candy
  attr_reader :type, :sugar
  def initialize(type="Skittles", sugar=100)
    @type = type
    @sugar = sugar
  end
end