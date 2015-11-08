module nat

import bool
import pair

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return true if the argument is odd otherwise false
oddb: nat -> bool
oddb n = not (evenb n)

||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

||| given a pair of natural numbers, return its product
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair (multp (mkPair m n)) m)

||| given a natural number return its factorial
factp: nat -> nat
factp O = (S O)
factp (S n) = multp (mkPair (S n) (factp n))

||| given a pair of natural number, (a, b), return a-b.
||| If a < or = b, the answer will be O.
subp: pair nat nat -> nat
subp (mkPair a b) = O
subp (mkPair a O) = a
subp (mkPair O b) = O
subp (mkPair (S a) (S b)) = subp (mkPair a b)

||| given a pair of natural numbers (x, n), return the value x, to the nth power
expp: pair nat nat -> nat
expp (mkPair O n) = O
expp (mkPair x O) = (S O)
expp (mkPair x (S n)) = multp (mkPair (exp (mkPair x n)) x)

||| given a pair of natural numbers (a, b), return true if a is less than or equal to b, otherwise return false
lep: pair nat nat -> bool
lep (mkPair O b) = true
lep (mkPair a O) = false
lep (mkPair (S a) (S b)) = lep (mkPair a b)

||| given a pair of natural numbers (a, b), return true if a is equal to b, otherwise return false
eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair O b) = false
eqp (mkPair a O) = false
eqp (mkPair (S a) (S b)) = eqp (mkPair a b)

||| given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtp: pair nat nat -> bool
gtp (mkPair a b) = not (lep (mkPair a b))

||| given a pair of natural numbers, (a, b), return true if a is greater than or equal to b, otherwise return false
gep: pair nat nat -> bool
gep (mkPair a b) = (xorp (mkPair (eqp (mkPair a b)) (gtp (mkPair a b))))

||| given a pair of natural numbers (a, b), return true if a is less than b, otherwise return false
ltp: pair nat nat -> bool
ltp (mkPair a b) = not (gep (mkPair a b))

--Class Notes
add: nat -> nat -> nat
add O m = m
add (S n) m = S(add n m)
