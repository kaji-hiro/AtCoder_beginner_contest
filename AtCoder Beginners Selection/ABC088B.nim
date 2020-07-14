import strutils
import sequtils
import math
import algorithm

let n = stdin.readLine.parseInt - 1
var
  a = stdin.readLine.split.map(parseInt)
  Alice = 0
  Bob = 0

a = a.sorted(cmp, Descending)

for i in 0..n:
  if i mod 2 == 0:
    Alice += a[i]
  else:
    Bob += a[i]

echo Alice - Bob
