n, m, t = gets.split.map(&:to_i)
max = n
last_b = 0
m.times do |i|
  a, b = gets.split.map(&:to_i)
  n -= a - last_b
  if n <= 0
    puts 'No'
    return
  end
  n += b - a
  if n > max
    n = max
  end
  last_b = b
end
n -= t - last_b
if n <= 0
  puts 'No'
else
  puts 'Yes'
end