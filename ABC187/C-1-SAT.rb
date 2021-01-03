n = gets.to_i
s = []
n.times do |i|
  s[i] = gets
end
ans = 0

s.uniq.each do |i|
  if i[0] == '!'
    if s.include?(i.delete_prefix('!'))
      puts i.delete_prefix('!')
      return
    end
  else
    if s.include?('!' + i)
      puts i
      return
    end
  end
end

puts 'satisfiable'
