n = gets.to_i
xy = []
result = false
n.times do |i|
  xy[i] = gets.split.map(&:to_i)
end

xy.combination(3).to_a.each do |array|
  x1, y1 = array[0]
  x2, y2 = array[1]
  x3, y3 = array[2]
  result = true if (y3 - y1) * (x2 - x1) == (x3 - x1) * (y2 - y1)
end

if result
  puts 'Yes'
else
  puts 'No'
end
