import strutils
import sequtils
import math
import algorithm

let
  nab = stdin.readLine.split
  n = nab[0].parseInt
  a = nab[1].parseInt
  b = nab[2].parseInt
var
  ans = 0

for i in 0..n:
  var
    j = 0
    t = i
  while t > 0:
    j += t mod 10
    t = t div 10
  if a <= j:
    if j <= b:
      ans += i

echo ans
