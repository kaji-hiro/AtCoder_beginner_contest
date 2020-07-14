import strutils
import sequtils
import math
import algorithm

var s = stdin.readLine

s = s.replace("eraser", "")
s = s.replace("erase", "")
s = s.replace("dreamer", "")
s = s.replace("dream", "")

if s == "":
  echo "YES"
else:
  echo "NO"
