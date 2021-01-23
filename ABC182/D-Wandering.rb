n = gets.to_i
a = gets.split.map(&:to_i)

a_sum, max_sum, position, ans = 0, 0, 0, 0

a.each do |a|
  a_sum += a
  max_sum = a_sum if max_sum < a_sum
  ans = position + max_sum if ans < position + max_sum
  position += a_sum
end

puts ans
