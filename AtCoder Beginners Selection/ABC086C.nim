import strutils
import sequtils
import math
import algorithm

proc absolute(num: int): int =
  if num < 0:
    result = num * -1
  else:
    result = num

let n = stdin.readLine.parseInt
var
  t = newSeq[int](n+1)
  x = newSeq[int](n+1)
  y = newSeq[int](n+1)
t[0] = 0
x[0] = 0
y[0] = 0

for i in 1..n:
  var txy = stdin.readLine.split
  t[i] = txy[0].parseInt
  x[i] = txy[1].parseInt
  y[i] = txy[2].parseInt

block tmp:
  for i in 1..n:
    if absolute(x[i] - x[i-1]) + absolute(y[i] - y[i-1]) > t[i] - t[i-1]:
      echo "No"
      break tmp
    elif (absolute(absolute(y[i] - y[i-1]) + absolute(x[i] - x[i-1]) - t[i] + t[i-1])) mod 2 == 1:
      echo "No"
      break tmp
  echo "Yes"
