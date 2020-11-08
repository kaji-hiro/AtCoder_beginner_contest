require 'prime'

n = gets.to_i
k = gets.split.map(&:to_i)
ans = 0
max_count = 0

Prime.take(168).each do |p|
  count = 0
  k.each do |k|
    count += 1 if k % p == 0
  end
  if max_count < count
    ans = p
    max_count = count
  end
end

puts ans
