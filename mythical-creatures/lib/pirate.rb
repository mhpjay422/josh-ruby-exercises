class Pirate
  attr_reader :name, :job, :curse, :booty
  def initialize(name="Jane", job="Scallywag", booty=0)
    @name = name
    @job = job
    @curse_level = 0
    @booty = booty
  end

  def cursed?
    @curse_level >= 3    
  end
  
  def commit_heinous_act
    @curse_level += 1
  end

  def rob
    @booty += 100
  end
end