import strutils
import sequtils
import math
import algorithm

let
  a = stdin.readLine.string.parseInt
  bc = stdin.readLine.split
  b = bc[0].parseInt
  c = bc[1].parseInt
  s = stdin.readLine.string

echo $(a + b + c) & " " & s
