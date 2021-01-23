n, w = gets.split.map(&:to_i)
stp = []
sum = Array.new(200001, 0)
n.times do |i|
  s, t, p = gets.split.map(&:to_i)
  sum[s] += p
  sum[t] -= p
end

1.upto(200000) do |i|
  sum[i] += sum[i - 1]
end

if w >= sum.max
  puts 'Yes'
else
  puts 'No'
end
