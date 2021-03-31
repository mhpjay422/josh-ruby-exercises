class Wallet 
  attr_reader :coin_pocket
  def initialize(coin_pocket=[])
    @coin_pocket = coin_pocket
  end

  def cents
    return 0 if coin_pocket == []
    coin_pocket.reduce(0) do |total, coin|
      case 
      when coin == :penny
        total += 1
      when coin == :nickel
        total += 5
      when coin == :dime
        total += 10
      when coin == :quarter
        total += 25   
      end
    end
  end

  def <<(coin)
    coin_pocket.push(coin)
  end

  def take(*coins)
    coins.each { |coin| coin_pocket.delete_at(coin_pocket.index(coin) || coin_pocket.length)}
  end
end