N = gets.split('').map(&:to_i)
N.delete(0)
finish = false

if N.sum % 3 == 0
  puts 0
  finish = true
else
  N.each do |n|
    if (N.sum - n) % 3 == 0 && (N.sum - n) != 0
      puts 1
      finish = true
      break
    end
  end
end

unless finish
  N.combination(2).to_a.each do |c|
    if (N.sum - c.sum) % 3 == 0 && (N.sum - c.sum) != 0
      puts 2
      finish = true
      break
    end
  end
end

puts -1 unless finish
