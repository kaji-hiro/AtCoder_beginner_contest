a, b, c, d = gets.split.map(&:to_i)

if (b > 0 && d > 0) || (a < 0 && c < 0)
  puts [b * d, a * c].max
elsif a * b <= 0 || c * d <= 0
  puts 0
else
  if a < 0
    puts b * c
  else
    puts a * d
  end
end
