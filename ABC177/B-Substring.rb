s  = gets.chomp
t = gets.chomp
min = t.length

(s.length - t.length + 1).times do |i|
  count = 0
  t.length.times do |j|
    count += 1 if s[i+j] != t[j]
  end
  min = count if count < min
end

puts min
