n, k = gets.chomp.split.map(&:to_i)
a = [n]

def func(x)
  min = x.to_s.split('').sort.join.to_i
  max = x.to_s.split('').sort.reverse.join.to_i
  max - min
end

k.times do |i|
  a[i + 1] = func(a[i])
end

puts a[k]
