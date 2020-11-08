n = gets.to_i
a = gets.split.map(&:to_i)
a_sum, a_sum_ans = Array.new(n), Array.new(n)
a_sum[0], a_sum_ans[0] = a[0], a[0]
ans = 0
1.upto(n - 1) do |i|
  a_sum[i] = a_sum[i - 1] + a[i]
  a_sum_ans[i] = a_sum_ans[i - 1] + a_sum[i]
  tmp = a_sum_ans[i - 1]
  i.times do |j|
    tmp += a[j]
    ans = tmp if ans < tmp
  end
end

puts ans
