n = gets.to_i
s = (0...n).map { gets.chomp }
ans = 1
(0...n).reverse_each do |i|
  ans += 2**(i + 1) if s[i] == 'OR'
end

puts ans
