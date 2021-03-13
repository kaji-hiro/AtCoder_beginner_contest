n = gets.to_i
an = 0

(n - 1).times do |i|
  an += (10**6).to_f / (i + 1)
end

puts (n.to_f * an).to_f / (10**6)
