x, y = gets.split.map(&:to_i)

if x > y
  if x < y + 3
    puts 'Yes'
  else
    puts 'No'
  end
elsif y < x + 3
  puts 'Yes'
else
  puts 'No'
end
