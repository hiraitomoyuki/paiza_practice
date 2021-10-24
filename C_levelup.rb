# 標準入出力

# 単純な入出力 (paizaランク D 相当)
# まず入力を受け取って変数 s に代入します。
# 次に s をそのまま出力します。
a = gets
puts a

# 複数行にわたる出力 (paizaランク D 相当)
# 整数 n が与えられるので、 n 回、改行区切りで paiza と出力してください。
n = gets.to_i

n.times { puts 'paiza' }


# 複数行にわたる入力 (paizaランク D 相当)
# 整数 n と n 個の整数 a_1, ..., a_n が改行区切りで与えられるので、 a_1, ..., a_n を与えられた順に、改行区切りで出力してください。
n = gets.to_i
n.times do
  a = gets.to_i
  puts a
end

# 入力の配列による保持 (paizaランク D 相当)
# 整数 n と n 個の数 a_1, ..., a_n が改行区切りで与えられます。与えられた a_1, ..., a_n の中で最も大きい数を出力してください。
n = gets.to_i

arr = Array.new(n)
n.times { |i| arr[i] = gets.to_i }

puts arr.max

# 半角スペース区切りでの出力
# 整数 n が与えられるので、n 回、半角スペース区切りで paiza と出力してください。
n = gets.to_i

arr = Array.new(n)
n.times { |i| arr[i] = 'paiza' }

puts arr.join(' ')

# 改行区切りでの出力 (paizaランク D 相当)
# 整数 n が与えられ、その後に n 個の整数 a_1, ..., a_n が半角スペース区切りで与えられるので、a_1, ..., a_n をそのままの順番で改行区切りで出力してください。
n = gets.to_i

a = gets.split(' ').map(&:to_i)
puts a