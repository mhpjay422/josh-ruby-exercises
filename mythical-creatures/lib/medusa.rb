class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    @statues << person 
    person.freeze
    unfreeze_if_necessary
  end

  def unfreeze_if_necessary
    return "nobody to unfreeze" if @statues.length < 4
    freed_person = @statues.shift
    freed_person.unfreeze
  end
end

class Person 
  attr_reader :name, :frozen
  def initialize(name)
    @name = name
    @frozen = false
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