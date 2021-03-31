class RollCall
  attr_reader :list
  def initialize(list=[])
    @list = list
  end

  def longest_name
    return nil if list == []
    list.reduce([]){|long, name| long.length > name.length ? long : name}
  end

  def <<(name)
    @list.push(name)
  end
end