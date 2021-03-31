class Centaur
  attr_reader :name, :breed, :mood, :standing, :energy, :status
  def initialize(name="George", breed="Palomino", mood="Happy", standing=true, energy=3, status="ok")
    @name = name
    @breed = breed
    @mood = mood
    @standing = standing
    @energy = energy
    @status = status
  end

  def shoot
    return "NO!" if @energy == 0 || self.laying?
    @energy -= 1
    @mood = "cranky" if @energy == 0
    return "Twang!!!"
  end
  
  def run 
    return "NO!" if self.laying?
    @energy -= 1
    @mood = "cranky" if @energy == 0
    return "Clop clop clop clop!"
  end

  def cranky?
    @mood == "cranky"
  end

  def standing?
    @standing
  end

  def sleep
    return "NO!" if self.standing? == true
    @mood = "Happy"
    @energy = 3
  end

  def laying?
    @standing == false
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if @standing == true
      if @energy == 3 && @mood == "Happy"
        @status = "sick"
        @energy = -1 
        @mood = "cranky"
        return "I'm going to be sick"
      else   
        @energy = 3
        @mood = "Happy"
        return "Ahhhh"
      end
    else 
      return "Sit up when eating or drinking!"
    end  
  end

  def rested?
    true ? @energy == 3 && @mood == "Happy" : false
  end

end