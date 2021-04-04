class Door 
  attr_reader :secure 
  def initialize(secure=true)
    @secure = secure
  end

  def locked?
    secure
  end

  def unlock 
    @secure = false
  end
end
