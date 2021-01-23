n = gets.to_i
xy = []
ans = 0
n.times do |i|
  xy[i] = gets.split.map(&:to_i)
end
0.upto(n - 2).each do |i|
  (i + 1).upto(n - 1).each do |j|
    ans += 1 if (xy[i][1] - xy[j][1]).abs / (xy[i][0] - xy[j][0]).abs.to_f <= 1
  end
end

puts ans
