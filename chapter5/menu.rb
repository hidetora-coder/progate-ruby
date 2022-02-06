require "date"

class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def get_total_price(count)
    # 合計金額を返すメソッド
    # 商品数が３つ以上であれば30％OFFでそれ以外はそのまま
    total_price = price * count

    # 購入数が3つ以上なら500円引き
    if count >= 3
      total_price -= 500
    end

    # 日曜日なら100円引き
    if count >= 1 && Menu.is_discount_day?
      total_price -= 100
    end

    total_price
  end

  def info
    "#{name}/#{price}円"
  end

  def self.is_discount_day? #=> クラスメソッド クラス名.クラスメソッド or self.クラスメソッド
    today = Date.today
    today.sunday?
  end
end
