n, x = gets.split.map(&:to_i)
sum = 0.0
n.times do |i|
  v, p = gets.split.map(&:to_i)
  sum += v * p
  if x * 100 < sum
    puts i + 1
    return
  end
end
puts '-1'
