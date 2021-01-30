n, s, d = gets.split.map(&:to_i)
n.times do
  x, y = gets.split.map(&:to_i)
  if x < s && y > d
    puts 'Yes'
    return
  end
end
puts 'No'
