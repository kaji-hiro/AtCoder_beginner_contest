import strutils
import sequtils
import math
import algorithm

let
  ab = stdin.readLine.split
  a = ab[0].parseInt
  b = ab[1].parseInt

if a * b mod 2 == 1:
    echo "Odd"
else:
    echo "Even"
