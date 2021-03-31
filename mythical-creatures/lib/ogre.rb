class Ogre
  attr_reader :name, :home, :swing, :encounter
  def initialize(name="Brak", home="Swamp", swing=0, encounter=0)
    @name = name
    @home = home
    @swing = swing
    @encounter = encounter
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
  attr_reader :name, :counter, :status
  def initialize(name="Jane", counter=0, status="ok")
    @name = name
    @counter = counter
    @status = status
  end

  def encounter
    @counter += 1
  end

  def encounter_counter
    @counter
  end

  def notices_ogre?
    @counter % 3 == 0 ? true : false
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