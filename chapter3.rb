puts "---1.メソッドとは---"
def introduce
  puts "こんにちは"
  puts "23歳です"
end
introduce #=> メソッドを呼ぶ

puts "---2.メソッドを自作しよう---"
def print_info
  puts "わんこでんきへようこそ！"
  puts "今日はヘッドホンがセール中です！"
end
print_info

puts "---3.引数とは---"
def say_hello(name)
  puts "#{name}さん、こんにちは！"
end
say_hello("Hidetora")

puts "---戻り値とは---"

def discount(price)
  return price / 2 #=> 計算結果が戻り値として返される
end

half_price = discount(40000)
puts "特別価格で#{half_price}円です"


puts "---様々な戻り値---"
def shipping_free?(price)
  return price > 5000
end

if shipping_free?(3000)
  puts "送料無料です"
else
  puts "配送料が掛かります"
end

puts "---キーワード引数---"
def add_tax(price)
  taxed_price = price * 0.1 + price
  return taxed_price.floor
end

def buy(item, price, count)
  puts "#{item}を#{count}台のお買い上げです。"
  puts "合計で#{add_tax(price)}円になります"
end

buy("Final A4000", 14000, 1)
