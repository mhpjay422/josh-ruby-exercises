class Ogre
  attr_reader :name, :home, :swing, :encounter
  def initialize(name, home="Swamp")
    @name = name
    @home = home
    @swing = 0
    @encounter = 0
  end

  def encounter(person)
    person.encounter
    @encounter += 1
    self.swing_at(person) if @encounter % 3 == 0
  end

  def encounter_counter
    @encounter
  end

  def swing_at(person)
    @swing += 1
    person.knock_out if self.swings == 2
  end

  def swings  
    @swing
  end

  def apologize(person)
    person.wake_up
  end
end

class Human 
  attr_reader :name, :counter_for_encounter, :status
  def initialize(name="Jane")
    @name = name
    @counter_for_encounter = 0
    @status = "ok"
  end

  def encounter
    @counter_for_encounter += 1
  end

  def encounter_counter
    @counter_for_encounter
  end

  def notices_ogre?
    @counter_for_encounter % 3 == 0 ? true : false
  end

  def knock_out
    @status = "knocked_out"
  end

  def knocked_out?
    @status == "knocked_out"
  end

  def wake_up
    @status = "ok"
  end
end