n, x, m = gets.split(' ').map(&:to_i)
a = []
a[1] = x
sum = x
b = [0]
j = 0
start = 0
array = []

2.upto(n) do |i|
  a[i] = a[i - 1] ** 2 % m
  if b[0] == a[i]
    break
  elsif a.uniq.count != a.count
    b[j] = a[i]
    j += 1
  end
end

start = a.count - b.count

2.upto(start) do |i|
  sum += a[i]
end

sum += b.sum * (n - start) / b.count
sum += b[0..((n - start) % b.count)].sum

puts sum
