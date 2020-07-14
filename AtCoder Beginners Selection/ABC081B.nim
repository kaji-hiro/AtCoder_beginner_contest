import strutils
import sequtils
import math
import algorithm

var
  nouse = stdin.readline
  a = stdin.readline.split.map(parseInt)
  i = 0

while a.all(proc(x: int): bool = x mod 2 == 0):
  a = a.map(proc(x: int): int = (x / 2).int)
  i.inc()

echo i
