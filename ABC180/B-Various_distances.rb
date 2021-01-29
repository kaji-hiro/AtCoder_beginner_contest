n = gets
x = gets.split.map(&:to_i).map(&:abs)
sum = 0

x.each { |i| sum += i**2 }

puts x.sum
puts Math.sqrt(sum)
puts x.max
