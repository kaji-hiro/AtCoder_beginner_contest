n = gets.to_i
ans = 0
(n + 1).times do |i|
  ans += 1 if i.to_s.include?('7') || i.to_s(8).include?('7')
end
puts n - ans
