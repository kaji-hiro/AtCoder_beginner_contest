include Math

n = gets.to_i
ans = []
(1..sqrt(n).to_i).each do |i|
  if n % i == 0
    ans.push(i)
    ans.push(n / i)
  end
end

puts ans.uniq.sort
