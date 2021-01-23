n = gets.to_i
a = gets.split.map(&:to_i)

max_index = a.index(a.max)
if 2**(n - 1) > max_index
  puts a.index(a.slice(2**(n - 1), 2**(n - 1)).max) + 1
else
  puts a.index(a.slice(0, 2**(n - 1)).max) + 1
end
