# class Wizard
#   attr_reader :name, :bearded, :rested
#   def initialize(name, bearded={bearded: true}, energy=3)
#     @name = name
#     @bearded = bearded
#     @energy = energy
#   end

#   def incantation(spell)
#     "sudo #{spell}"
#   end

#   def bearded?
#     @bearded[:bearded]
#   end

#   def rested?
#     @energy > 0    
#   end
  
#   def cast
#     @energy -= 1
#     "MAGIC MISSLE!"
#   end
# end

class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded={bearded: true}, energy=3)
    @name = name
    @bearded = bearded
    @energy = energy
  end

  def bearded?
    @bearded[:bearded]
  end

  def incantation(saying)
    "sudo " + saying
  end

  def rested?
    @energy > 0
  end

  def cast
    @energy -= 1
    "MAGIC MISSLE!"
  end
end