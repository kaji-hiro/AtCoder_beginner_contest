n = gets.to_i
s_true = []
s_false = []
n.times do
  tmp = gets
  if tmp[0] == '!'
    s_true << tmp.delete_prefix('!')
  else
    s_false << tmp
  end
end
s = s_true & s_false
if s.size.zero?
  puts 'satisfiable'
else