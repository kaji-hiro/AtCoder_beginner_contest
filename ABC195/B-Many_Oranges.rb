a, b, w = gets.split.map(&:to_i)

div_b = w * 1000.to_f / b.to_f
div_a = w * 1000.to_f / a.to_f
if div_a.floor == div_b.floor
  if w * 1000 % a == 0
    puts "#{w * 1000 / a} #{w * 1000 / a}"
  else
    puts 'UNSATISFIABLE'
  end
else
  puts "#{div_b.ceil} #{div_a.floor}"
end
