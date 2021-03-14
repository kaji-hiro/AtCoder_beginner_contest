n = gets.to_i
i = 1
ans = 0

while (n / 1000**i) > 0
  ans += (n - ('9' * (i * 3)).to_i)
  i += 1
end

puts ans
