require "./menu"

class Food < Menu
  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    super(name: name, price: price) #=> 親クラスのinitializeメソッドを呼び出している
    self.calorie = calorie
  end

  def calorie_info
    "#{name}は#{calorie}Kcalです"
  end

  def info #=>menuインスタンス内のinfoメソッドをオーバーライド
    "#{name} #{price}円 (#{calorie}kcal)"
  end
end
