puts 'こんにちはRuby'

puts '---1.数値の出力---'
puts 28

puts '---2.計算---'
puts 2 + 9

puts '---3.文字列の出力---'
puts '2 + 9'

puts '---4.文字列の連結---'
puts '私は' + '佐藤秀虎です'

puts '---5.変数---'
name = 'Hidetora Sato'
puts name

puts '---6.変数と文字列の連結---'
puts '私の名前は' + name

puts '---変数の更新(1)---'
width = 20
height = 10
puts width * height
puts '--------------------'
width = 40
puts width * height

puts '---10変数の更新(2)---'
width += 5
puts width * height

puts '---11.変数展開---'
length = 9
width = 8
area = length * width
puts "面積は#{area}です！"

puts '---12.if文---'
score = 92
if score > 80
  puts 'よくできました！'
end

puts '---13.真偽値・比較演算子(1)---'
score = 45
puts score > 50 #=> false
puts score < 50 #=> true

if score <= 80
  puts 'もう少し頑張りましょう!'
end

puts '---14.真偽値・比較演算子(2)---'
score = 100

if score == 100
  puts '満点です'
end

if score != 100
  puts '満点ではありません'
end

puts '---14.else文---'
if score == 100
  puts "#{score}点!!"
  puts 'よくできました！'
else
  puts "#{score}点..."
  puts 'もっと頑張りましょう'
end

puts '---15.elsif文---'
if score >= 90
  puts '良くできました'
elsif score >= 60
  puts 'まずまずです'
else
  puts 'もっと頑張りましょう'
end

puts '---17.条件を組み合わせよう---'
score = 98
if score >= 90 && score <= 99
  puts '高得点です！次は満点を目指しましょう。'
end

puts '---18.総合課題---'
# ある整数が
# ・3の倍数かつ5の倍数（= 15の倍数）
# ・5の倍数
# ・3の倍数
# ・いずれでもない
# を判定するプログラム。

number = 19

if (number % 5).zero? && (number % 3).zero?
  puts '15の倍数です'
elsif (number % 5).zero?
  puts '5の倍数です'
elsif (number % 3).zero?
  puts '3の倍数です'
else
  puts '3の倍数でも5の倍数でもありません'
end

if (number % 5).zero? && (number % 3).zero?
  puts '15の倍数です'
elsif (number % 5).zero?
  puts '5の倍数です'
elsif (number % 3).zero?
  puts '3の倍数です'
else
  puts '3の倍数でも5の倍数でもありません'
end
