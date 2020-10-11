input = gets.chomp

input += input.end_with?('s') ? 'es' : 's'

puts input
