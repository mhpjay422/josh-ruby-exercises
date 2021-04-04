class Drops 
  attr_reader :drip_count
  def initialize()
    @drip_count = 0
  end

  def count 
    drip_count
  end

  def drip 
    @drip_count += 1
  end
end