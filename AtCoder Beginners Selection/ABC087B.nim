import strutils
import sequtils
import math
import algorithm

let
  a = stdin.readLine.parseInt
  b = stdin.readLine.parseInt
  c = stdin.readLine.parseInt
  d = stdin.readLine.parseInt
var e = 0

for i in 0..a:
  for j in 0..b:
    for k in 0..c:
      if i * 500 + j * 100 + k * 50 == d: e.inc

echo e
