n = gets.to_i
sa = 0
dif = []
ans = 0
n.times do
  a, b = gets.split.map(&:to_i)
  sa += a
  dif << a * 2 + b
end
dif.sort.reverse.each do |tmp|
  sa -= tmp
  ans += 1
  if sa < 0
    puts ans
    return
  end
end
