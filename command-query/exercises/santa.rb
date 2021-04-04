class Santa 
  attr_reader :cookie_count
  def initialize()
    @cookie_count = 0
  end

  def eats_cookies
    @cookie_count += 1
  end

  def fits?
    cookie_count <= 2
  end
end