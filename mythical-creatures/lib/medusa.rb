class Person 
  attr_reader :name, :frozen
  def initialize(name, frozen=false)
    @name = name
    @frozen = frozen
  end

  def stoned?
    @frozen
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
    if statues.length < 3
      @statues.push(person) 
    else 
      # require "pry";binding.pry
      freed_person = @statues.shift
      @statues.push(person)
      freed_person.unfreeze
    end
    person.freeze
  end
  

end