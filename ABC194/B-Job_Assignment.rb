n = gets.to_i
a = [], b = []
n.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
end

a_min = a.min
b_min = b.min

if a.index(a_min) == b.index(b_min)
  puts [(a_min + b_min), [a.min(2).last, b_min].max, [a_min, b.min(2).last].max].min
else
  puts [a_min, b_min].max
end
