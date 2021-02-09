n,k = gets.split(' ').map(&:to_i)

range = []
k.times do |i|
  range.push(gets.split(' ').map(&:to_i))
end

dp = []
sum_dp = []
dp[1] = 1
sum_dp[0] = 0
sum_dp[1] = 1

2.upto(n) do |i|
  dp[i] = 0
  range.each do |j|
    k = i - j[0] > 0 ? i - j[0] : 0
    l = i - j[1] - 1 > 0 ? i - j[1] - 1 : 0
    dp[i] += sum_dp[k] - sum_dp[l]
    dp[i] %= 998244353
  end
  sum_dp[i] = sum_dp[i - 1] + dp[i]
end

puts dp[n]
