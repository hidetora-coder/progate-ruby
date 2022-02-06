# Menuクラス
class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def print_info
    return "商品名[#{self.name}]/価格[#{self.price}円]"
  end

  def add_tax(total_price)
    taxed_price = total_price - total_price * 0.1
    return taxed_price.floor
  end

  def get_total_price(count)
    # 3個以上で５０００円引き
    # それ以外はそのまま
    total_price = self.price * count
    if count >= 3
      discounted_price = total_price - 5000
      return add_tax(discounted_price)
    else
      return add_tax(total_price)
    end
  end
end