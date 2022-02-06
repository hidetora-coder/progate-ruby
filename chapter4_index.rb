require "./chapter4_menu"

menu1 = Menu.new(name: "Aesop　ヒュイル", price: 13640)
menu2 = Menu.new(name: "Aesop　タシット", price: 12650)
menu3 = Menu.new(name: "Aesop　マラケッシュ", price: 14300)
menu4 = Menu.new(name: "Aesop ミラセッティ", price: 21450)

menus = [menu1, menu2, menu3, menu4]
index = 0

menus.each do |menu|
  puts "#{index}." + menu.print_info
  index += 1
end

puts "メニューを選択してください"
order = gets.chomp.to_i
selected_menu = menus[order]

puts "おいくつお買い上げになりますか？"
count = gets.chomp.to_i

puts "合計金額は税込み#{selected_menu.get_total_price(count)}円です"

