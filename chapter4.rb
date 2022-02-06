puts "---クラスの定義---"

class Menu
  attr_accessor :name #=> インスタンスに要素を追加している
  attr_accessor :price
end

menu1 = Menu.new #=> Menuインスタンスを生成してmenu1変数に代入している
menu1.name = "ハンバーク定食"
puts menu1.name

menu1.price = 1400
puts menu1.price

puts "---メソッドを用いる---"

class User
  attr_accessor :name
  attr_accessor :age

  def introduce
    puts "私の名前は#{self.name}です！年齢は#{self.age}歳です!"
  end
end

user1 = User.new
user1.name = "佐藤　秀虎"
user1.age = 23
user1.introduce

puts "---クラスとインスタンスの復習---"

class Product
  attr_accessor :name
  attr_accessor :price

  def info
    return "商品『#{self.name}』 / 値段『#{self.price}円』"
  end

  def get_total_price(count)
    total_price = self.price * count
    if count >= 3
      return "#{total_price - 500}円"
    else
      return "#{total_price}円"
    end
  end
end

product1 = Product.new
product1.name = "Airpods Pro"
product1.price = 24000

puts product1.info
puts product1.get_total_price(100)

puts "---Initializeメソッド---"

class Family
  attr_accessor :first_name
  attr_accessor :age

  def initialize(first_name:, age:)
    self.first_name = first_name
    self.age = age
  end

  def print_info
    return "私は#{self.first_name}、#{self.age}歳です！"
  end
end

family1 = Family.new(first_name: "とら", age: 23)
puts family1.print_info
