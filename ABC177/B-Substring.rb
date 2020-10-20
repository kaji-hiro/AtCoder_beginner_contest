s  = gets.split('')
t = gets.split('')
min = t.count

(s.count - t.count + 1).times do |i|
  count = 0
  t.count.times do |j|
    count += 1 if s[i + j] != t[j]
  end
  min = count if count < min
end

puts min
