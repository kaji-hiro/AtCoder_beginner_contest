n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
a_sum = a.sum
a.each_with_index do |i, _index|
  ans += (n - 1) * i**2
  ans -= 2 * i * (a_sum - i)
  a_sum -= i
end

puts ans
