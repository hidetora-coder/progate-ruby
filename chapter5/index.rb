require "./food"
require "./drink"

# food1, food2のインスタンスを作成
food1 = Food.new(name: "ピザ", price: 1200, calorie: 1500)
food2 = Food.new(name: "寿司", price: 2300, calorie: 1000)

# drink1, drink2のインスタンスを作成
drink1 = Drink.new(name: "コーラ", price: 180, amount: 200)
drink2 = Drink.new(name: "お茶", price: 120, amount: 150)

# menus配列を作成
menus = [food1, food2, drink1, drink2]

# 繰り返し処理でメニューを羅列させる処理を作成
index = 0
menus.each do |menu|
  puts "#{index}." + menu.info.to_s
  index += 1
end

# 注文
puts "--------------"
puts "メニューの番号を入力してください"
order = gets.chomp.to_i
selected_menu = menus[order]
puts "選択されたメニュー：#{selected_menu.name}"

puts "購入する個数を入力してください"
count = gets.chomp.to_i

puts "お会計の合計は#{selected_menu.get_total_price(count)}円です"
