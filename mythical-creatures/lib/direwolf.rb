class Direwolf
  attr_reader :name, :home, :size, :protecting
  def initialize(name, home='Beyond the Wall', size="Massive")
    @name = name
    @home = home
    @size = size
    @protecting = []
  end

  def starks_to_protect
    protecting
  end

  def protects(person)
    if self.home == person.location && protecting.length < 2
      protecting << person 
      person.is_safe = true
    end
  end

  def hunts_white_walkers?
    protecting.length == 0 ? true : false
  end

  def leaves(person)
    person.is_safe = false
    @protecting.delete(person)
    person
  end
end

class Stark 
  attr_reader :name, :location, :house_words
  attr_accessor :is_safe
  def initialize(name, location='Winterfell')
    @name = name
    @location = location
    @is_safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    is_safe
  end


end