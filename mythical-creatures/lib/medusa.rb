class Person 
  attr_reader :name, :frozen
  def initialize(name, frozen=false)
    @name = name
    @frozen = frozen
  end

  def stoned?
    frozen
  end

  def freeze
    @frozen = true
  end

  def unfreeze
    @frozen = false
  end
end

class Medusa
  attr_reader :name, :statues
  def initialize(name="Cassiopeia", statues=[])
    @name = name
    @statues = statues
  end

  def stare(person)
    @statues.push(person) 
    person.freeze
    unfreeze_if_necessary
  end

  def unfreeze_if_necessary
    return "nobody to unfreeze" if @statues.length < 4
    freed_person = @statues.shift
    freed_person.unfreeze
  end
  

end