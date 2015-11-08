module bool

import pair

data bool = true | false

id: bool -> bool
id b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

||| given a pair of natural numbers (a, b), returns true if a and b are true, otherwise returns false
and: pair bool bool -> bool
and (mkPair false false) = false
and (mkPair false _) = false
and (mkPair _ false) = false
and (mkPair _ _) = true

||| given a pair of natural numbers (a, b), returns true both a and b are false, otherwise returns true
or: pair bool bool -> bool
or (mkPair false false) = false
or (mkPair false _) = true
or (mkPair _ false) = true
or (mkPair _ _) = true

||| given a pair of natural numbers (a, b), returns false if both a and b are true, otherwise returns true
nand: pair bool bool -> bool
nand (mkPair a b) = not (and (mkPair a b))

||| given a pair of natural numbers (a, b), returns true if exactly one of a or b is true, otherwise returns false
xor: pair bool bool -> bool
xor (mkPair false false) = false
xor (mkPair _ false) = true
xor (mkPair false _) = true
xor (mkPair _ _) = false


--EXAM ANSWERS ARE BELOW!


{-Exam Problem #2: There are 16 possible ways to fill in the result column for a truth table for a binary Boolean function,
and there are thus exactly 16 such functions, and no more.-}

pand: bool -> bool -> bool
pand true c = id c
pand false c = constFalse c

por: bool -> bool -> bool
por true c = constTrue c
por false c = id c

pxor: bool -> bool -> bool
pxor true c = not c
pxor false c = id c

pnand: bool -> bool -> bool
pnand true c = constFalse c
pnand false c = not c

--Class Notes

andp: bool -> bool -> bool
andp true true = true
andp _ _ = false

uf: bool -> bool
uf = (and true)

--Below is another binary (not turnary) function
orp: bool -> bool -> bool
orp false false = false
orp _ _ = true
