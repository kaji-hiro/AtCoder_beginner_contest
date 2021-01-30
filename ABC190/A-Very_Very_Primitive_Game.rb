a, b, c = gets.split.map(&:to_i)

if c == 1
  if a - b >= 0
    puts 'Takahashi'
  else
    puts 'Aoki'
  end
elsif b - a >= 0
  puts 'Aoki'
else
  puts 'Takahashi'
end
