n = gets.to_i
a = gets.split.map(&:to_i)
sum, x = 0, 0

a.each do |a|
  sum += x * a
  x += a
  sum %= 10 ** 9 + 7
  x %= 10 ** 9 + 7
end

puts sum
