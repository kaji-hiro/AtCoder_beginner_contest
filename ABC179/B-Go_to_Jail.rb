n = gets.to_i
d = []
n.times do
  if gets.split(' ').uniq.count == 1
    d.push true
  else
    d.push false
  end
end

n.times do |i|
  next if i < 2
  if d[i-2] && d[i-1] && d[i]
    puts 'Yes'
    return
  end
end

puts 'No'
