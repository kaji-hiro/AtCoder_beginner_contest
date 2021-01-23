n, k = gets.split.map(&:to_i)
t = [0]
ans = 0
n.times do |n|
  t[n] = gets.split.map(&:to_i)
end

(1..n-1).to_a.permutation(n - 1).each do |comb|
  comb.push 0
  sum = 0
  l_index = 0
  comb.each do |i|
    sum += t[l_index][i]
    l_index = i
    ans += 1 if sum == k
    break if sum > k
  end
end

puts ans
