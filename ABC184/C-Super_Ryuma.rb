r1, c1 = gets.split.map(&:to_i)
r2, c2 = gets.split.map(&:to_i)

if r1 == r2 && c1 == c2
  puts 0
elsif (r1 - r2).abs + (c1 - c2).abs <= 3 || ((r1 - r2).abs - (c1 - c2).abs).zero?
  puts 1
elsif (r1 + c1) % 2 == (r2 + c2) % 2
  puts 2
elsif ((r1 - r2).abs - (c1 - c2).abs).abs <= 3
  puts 2
elsif (r1 - r2).abs + (c1 - c2).abs <= 6
  puts 2
else
  puts 3
end
