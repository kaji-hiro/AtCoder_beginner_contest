n, x, m = gets.split(' ').map(&:to_i)
a = []
a[0] = x
b = [nil]
j = 0
a_sum = [x]
b_sum = 0
flag = false

1.upto(n - 1) do |i|
  a[i] = a[i - 1] * a[i - 1] % m
  a_sum[i] = a_sum[i - 1] + a[i]
  if b[0] == a[i]
    flag = true
    break
  elsif a.uniq.count != a.count
    b[j] = a[i]
    j += 1
    b_sum += a[i]
  end
end

if flag
  a.delete_at(-1)
  start = a.count - j * 2
  sum = a_sum[start - 1]
  sum += b_sum * (n - start).div(j)
  sum += b[0..((n - start) % j - 1)].sum
else
  sum = a_sum[n - 1]
end

puts sum
