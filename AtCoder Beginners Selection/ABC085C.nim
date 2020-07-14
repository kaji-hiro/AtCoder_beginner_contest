import strutils
import sequtils
import math
import algorithm

let
  nm = stdin.readLine.split
  n = nm[0].parseInt
  m = nm[1].parseInt

block tmp:
  if n * 10000 < m:
    echo "-1 -1 -1"
  elif n * 1000 > m:
    echo "-1 -1 -1"
  else:
    for i in 0..n:
      for j in 0..n-i:
        if i * 10000 + j * 5000 + (n-i-j) * 1000 == m:
          echo $i & " " & $j & " " & $(n-i-j)
          break tmp
    echo "-1 -1 -1"
