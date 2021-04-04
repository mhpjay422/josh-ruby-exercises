class Kid 
  attr_reader :sugar_eaten
  def initialize()
    @sugar_eaten = 0
  end

  def grams_of_sugar_eaten
    sugar_eaten
  end

  def eat_candy 
    @sugar_eaten += 5
  end

  def hyperactive?
    sugar_eaten >= 60 ? true :false
  end
end