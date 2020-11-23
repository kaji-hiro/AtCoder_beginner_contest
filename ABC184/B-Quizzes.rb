n, x = gets.split.map(&:to_i)
s = gets

n.times do |i|
  next if x == 0 && s[i] == 'x'
  if s[i] == 'x'
    x -= 1
  else
    x += 1
  end
end

puts x
