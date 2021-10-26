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

# 数字の文字列操作（基本） (paizaランク D 相当)
# 0 ~ 9 の数字が 4 つ並んだ文字列 S が与えられます。
# 左から 1 番目の数と 4 番目の数を足し合わせたものを a とし、 2 番目の数と 3 番目の数を足し合わせたものを b とします。
# 文字列としての a の末尾に文字列としての b を結合したものを出力してください。
s = gets

a = s[0].to_i + s[3].to_i
b = s[1].to_i + s[2].to_i

puts a.to_s + b.to_s

# 数字の文字列操作（0埋め） (paizaランク D 相当)
# 0 ~ 999 の整数 n が与えられます。 n が 3 桁の数である場合には n をそのまま出力し、 n が 2 桁の数である場合には n の先頭に 0 をひとつ、
# 1 桁の数である場合には n の先頭に 0 をふたつ加えたものを出力してください。
n = gets.to_i

puts sprintf('%03d', n)

# もしくは
n = gets
n = '0' + n while n.length < 3

puts n

# 数字の文字列操作（時刻1） (paizaランク D 相当)
# 時刻を表す長さ 5 の文字列 S が “XX:XX” の形式で与えられます。入力された時刻を時と分に分け、時、分の順番で改行区切りで出力してください。
s = gets

a = s.split(':').map(&:to_i)
puts a[0]
puts a[1]

# 数字の文字列操作（時刻2） (paizaランク D 相当)
# 時刻を表す長さ 5 の文字列 S が “XX:XX” の形式で与えられます。与えられた時刻の 30 分後の時刻を同じ形式で出力してください。
s = gets

a = s.split(':').map(&:to_i)
h = a[0]
m = a[1]

m += 30
if m > 59
  m -= 60
  h += 1
end

h = h.to_s
m = m.to_s

h = '0' + h if h.length == 1
m = '0' + m if m.length == 1

puts h + ':' + m