a, b = gets.split

sa = a[0].to_i + a[1].to_i + a[2].to_i
sb = b[0].to_i + b[1].to_i + b[2].to_i

puts sa < sb ? sb : sa
