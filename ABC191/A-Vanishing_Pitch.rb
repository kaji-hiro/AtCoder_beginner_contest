v, t, s, d = gets.split.map(&:to_i)

if v * t > d || v * s < d
  puts 'Yes'
else
  puts 'No'
end
