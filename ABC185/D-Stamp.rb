n, m = gets.split.map(&:to_i)
a = [0] + gets.split.map(&:to_i) << n + 1
a.sort!
div = []
(m + 1).times do |i|
  tmp = a[i + 1] - a[i] - 1
  div << tmp if tmp > 0
end
k = div.min
puts div.map { |d| (d / k.to_f).ceil }.sum
