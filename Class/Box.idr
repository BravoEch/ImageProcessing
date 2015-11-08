module Box
import BoolExample1
--Imported definitions of true and false from BoolExample1.idr (also
  --in class directory)

data Box = mkBox bool
--Constructor is a function that takes a boolian value as an object

b1: Box
--b1 is a value of type "Box"
b1 = mkBox true

b2: Box
b2 = mkBox false

unbox: Box -> bool
unbox (mkBox b) = b
--Takes a box with a bool in it, and returns a bool
