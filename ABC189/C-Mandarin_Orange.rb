n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
n.times do |l|
  min = a[l]
  (l...n).each do |r|
    break if ans > min * (n - l)

    min = a[r] if min > a[r]
    ans = min * (r - l + 1) if ans < min * (r - l + 1)
  end
end

puts ans
