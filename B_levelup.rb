# 5以上の整数の合計

# 「5以上か4以下か Ruby編」
# 入力された整数nが5以上なら「high」、そうでないなら「low」を出力
n = gets.chomp.to_i

if n >= 5
  puts 'high'
else
  puts 'low'
end

# 配列（リスト）要素の合計
# 1, 3, 5, 6, 3, 2, 5, 23, 2
#を要素に持つ配列（リスト）をプログラムで定義し、使用すること。
array = [1, 3, 5, 6, 3, 2, 5, 23, 2]
ans = 0

array.each { |element| ans += element }

puts ans

# 複数行の入力と出力　
# 改行区切りで自然数が n 個入力されるので、n 個の自然数をそのまま出力
num = gets.chomp.to_i

(1..num).each do |i|
  output = gets.chomp.to_i
  puts output
end

# インクリメント
# nに1を足す　
num = gets.chomp.to_i
puts num + 1

# 配列（リスト）データの足し合わせ
array = [4, 0, 5, -1, 3, 10, 6, -8]
ans = 0

array.each { |element| ans += element if element >= 5 }

puts ans

# 5以上の整数の合計
loop = gets.chomp.to_i
ans = 0

(1..loop).each do |i|
  num = gets.chomp.to_i

  ans = ans + num if num >= 5
end

puts ans


# インクリメント
# n に 1 を加算して出力
num = gets.chomp.to_i
puts num + 1

# 文字列の出力
num = gets.chomp.to_i
(0...num).each { puts gets.chomp }