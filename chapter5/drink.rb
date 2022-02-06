require "./menu"

class Drink < Menu
  attr_accessor :amount

  def initialize(name:, price:, amount:)
    super(name: name, price: price)
    self.amount = amount
  end

  def info #=> オーバーライド
    "#{name} #{price}円 (#{amount}mL)"
  end
end
