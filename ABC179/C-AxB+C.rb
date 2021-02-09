n = gets.to_i

sqrt = Integer.sqrt(n)
sum = 0

1.upto(sqrt) do |i|
  div = n.div(i)
  if div > i
    n.div(i).each do |j|
      div -= 1 if n.quo(j) == 0
    end
    sum += (div - 2) * 2 + 1
  elsif div == i
    sum += 1
  end
end

puts sum
