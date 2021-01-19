n = gets.to_i
a = gets.split.map(&:to_i).sort
a_dp = [0]
ans = 0
1.upto(n) do |i|
  a_dp[i] = a_dp[i - 1] + a[i - 1]
end

n.times do |i|
  ans += a[i] * i - a_dp[i]
end

puts ans
