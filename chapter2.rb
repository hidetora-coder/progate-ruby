puts "---1.配列とは---"
countries = %w[日本 中国 アメリカ] #=> ["日本", "中国", "アメリカ"]でも良い
puts countries

puts "---2.配列を使ってみよう---"
puts countries[0]
puts countries[1]
puts countries[2]
puts "私は#{countries[0]}に住んでいます"

puts "---3.each文---"
names = %w[秀虎 広大 竜太]
names.each do |name|
  puts "#{name}です"
end

puts "---4.変数の使える範囲---"
sports = %w[野球 サッカー バスケ]
border = "------------"

sports.each do |sport|
  puts border
  puts sport
end
# puts sport => each文内の変数だから外から呼び出せない

puts "---5.ハッシュとは---"
user = {"name" => "Hidetora Sato", "age" => 23, "from" => "Japan"}
puts user

puts "---6.ハッシュを使ってみよう---"
exam = {"subject" => "Computer Science", "score" => 70}
puts exam["subject"]
puts exam["score"]

exam["subject"] = "Japanese History" #=> ハッシュ内のsubjectの中身を更新
puts exam["subject"]

exam["grade"] = "Awesome" #=> ハッシュ内に追加
puts exam

puts "---7.シンボルとは---"
jobs = {:type => "Programmer", :salary => 300000}
puts jobs
puts jobs[:type]

puts "---8.ハッシュのキーの書き方---"
my_info = {name: "Hidetora Sato", age: 23}
puts my_info
puts "#{my_info[:age]}歳です"

puts "---9.if nil---"
exam = {subject: "数学"}
# exam[:score] = 90
if exam[:score]
  puts "#{exam[:subject]}の点数は#{exam[:score]}点です"
else
  puts "#{exam[:subject]}の点数は分かりません"
end

puts "---.10要素がハッシュである配列(1)---"
users = [
  {name: "佐藤", age: 23},
  {name: "横井", age: 31}
]

puts users[1]

puts "---.11要素がハッシュである配列(2)---"
puts users[1][:name]

user = users[1]
puts user[:name] #=> 上の行と一緒

puts "---.12要素がハッシュである配列(3)---"

users = [
  {name: "佐藤", age: 23},
  {name: "横井", age: 31},
  {name: "村松", age: 26},
  {name: "呉屋", age: 42}
]

users.each do |user|
  puts "私の名前は#{user[:name]}で、#{user[:age]}歳です"
end

puts "---13.総合課題（2）---"
characters = [
  {name: "にんじゃわんこ", age: 14},
  {name: "ひつじ仙人"},
  {name: "ベイビーわんこ", age: 5},
  {name: "とりずきん"}
]

characters.each do |character|
  puts "--------------------"
  puts "名前は#{character[:name]}です"

  # キー:ageの値に応じて年齢の情報を出力してください
  if character[:age]
    puts "年齢は#{character[:age]}歳です"
  else
    puts "年齢は秘密です"
  end
end