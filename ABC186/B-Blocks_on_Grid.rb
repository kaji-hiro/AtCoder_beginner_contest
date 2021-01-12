h, w = gets.split.map(&:to_i)
min = 1000
sum = 0
h.times do
  a = gets.split.map(&:to_i)
  min = a.min if min > a.min
  sum += a.sum
end

puts sum - min * h * w
