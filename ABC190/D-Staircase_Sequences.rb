include Math

n = gets.to_i
ans = 0
divisor = []
(1..sqrt(n * 2).to_i).each do |i|
  if n * 2 % i == 0
    divisor.push(i)
    divisor.push(n * 2 / i)
  end
end
divisor.uniq.each do |div|
  a = 2 * n / div + 1 - div
  next if a <= 0

  ans += 1 if a.even?
end

puts ans * 2
