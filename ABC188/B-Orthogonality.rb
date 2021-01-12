n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
sum = 0
n.times do |i|
  sum += a[i] * b[i]
end
if sum.zero?
  puts 'Yes'
else
  puts 'No'
end
