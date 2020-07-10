import strutils
import sequtils
import math
import algorithm

let n = stdin.readLine.parseInt
var
  d =  newSeq[int](n)
  base = 0
  ans = 1
for i in 0..n-1:
  d[i] = stdin.readLine.parseInt

d = d.sorted(cmp, Descending)
base = d[0]

for i in 0..n-1:
  if base > d[i]:
    base = d[i]
    ans.inc

echo ans
