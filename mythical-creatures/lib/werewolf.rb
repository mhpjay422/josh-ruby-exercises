class Werewolf
  attr_reader :name, :location, :hungry
  def initialize(name="David", location="London", form="Human", hungry=false)
    @name = name
    @location = location
    @form = form
    @hungry = hungry
  end

  def human?
    @form == "Human"
  end

  def wolf?
    @form == "Werewolf"
  end

  def change! 
    if @form == "Human"
      @form = "Werewolf"
      @hungry = true
    else 
      @form = "Human"
    end
  end

  def hungry?
    @hungry
  end

  def eat(victim)
    if @form == "Werewolf"
      victim.status = :dead 
      @hungry = false
      return "Mmmmmm"
    end
  end
end