s = gets.to_i
dp = Array.new(s + 1, 0)
dp[0] = 1

s.times do |i|
  3.upto(s) do |j|
    break if i + j > s
    dp[i + j] += dp[i]
    dp[i + j] %= 1000000007
  end
end

puts dp[s]
