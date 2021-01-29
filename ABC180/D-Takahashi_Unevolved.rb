x, y, a, b = gets.split.map(&:to_i)
ans = 0
loop do
  break if a * x > b + x || a * x > y

  ans += 1
  x *= a
end

puts ans + (y - x - 1) / b
