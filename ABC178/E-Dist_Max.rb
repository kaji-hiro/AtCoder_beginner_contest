n = gets.to_i
x, y = [], []
n.times do |i|
  x, y = gets.split.map(&:to_i)
  x[i], y[i] = x + y, x - y
end

puts([(x.max - x.min).abs, (y.max - y.min).abs].max)

# TODO: 回答を見た
