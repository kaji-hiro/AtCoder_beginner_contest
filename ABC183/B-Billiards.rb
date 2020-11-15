a, b, c, d = gets.split.map(&:to_i)

n = (b + d) / (a - c).abs.to_f

if a < c
  puts a + b / n.to_f
else
  puts c + d / n.to_f
end
