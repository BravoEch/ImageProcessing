module nat

import bool
import eq
import serialize

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
even: nat -> bool
even O = true
even (S O) = false
even (S (S n)) = even n

||| return true if the argument is odd otherwise false
odd: nat -> bool
odd n = not (even n)

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its product
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult m n) m

||| given a natural number return its factorial
fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

||| given a pair of natural number, (a, b), return a-b.
||| If a < or = b, the answer will be O.
sub: nat -> nat -> nat
sub a O = a
sub _ b = O
sub (S a) (S b) = sub a b

||| given a value of type nat, returns the corresponding number in the Fibonacci Sequence
fib: nat -> nat
fib O = (S O)
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

||| given a pair of natural numbers (x, n), return the value x, to the nth power
ex: nat -> nat -> nat
ex O n = O
ex _ O = (S O)
ex x (S n) = mult (ex x n) x

||| given a pair of natural numbers (a, b), return true if a is less than or equal to b, otherwise return false
le: nat -> nat -> bool
le O b = true
le _ O = false
le (S a) (S b) = le  a b

||| given a pair of natural numbers (a, b), return true if a is equal to b, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O b = false
eql_nat a O = false
eql_nat (S a) (S b) = eql_nat a b

||| given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt a b = not (le a b)

||| given a pair of natural numbers, (a, b), return true if a is greater than or equal to b, otherwise return false
ge: nat -> nat -> bool
ge a b = xor (eql_nat a b) (gt a b)

||| given a pair of natural numbers (a, b), return true if a is less than b, otherwise return false
lt: nat -> nat -> bool
lt a b = not (ge a b)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
