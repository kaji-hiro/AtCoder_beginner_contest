s = gets.chomp.split('')

s.each_with_index do |x, i|
  if i.even?
    if x == x.upcase
      puts 'No'
      return
    end
  elsif x == x.downcase
    puts 'No'
    return
  end
end
