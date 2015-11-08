module dna

import list
import pair
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand a = map complement_base a

strand1: list (pair base base) -> list base
strand1 ab = map fst ab

strand2: list (pair base base) -> list base
strand2 ab = map snd ab

x: base -> pair base base
x a = mkPair a (complement_base a)

complete: list base -> list (pair base base)
complete a =  map x a

--PLEASE NOTE: I changed the name of foldr to "reduce," but it's the same function!
reduce: (a -> a -> a) -> a -> list a -> a
reduce f id nil = id
reduce f id (h::t) = f h (reduce f id t)

equ: base -> base -> nat
equ A A = (S O)
equ T T = (S O)
equ C C = (S O)
equ G G = (S O)
equ _ _ = O

countBase: base -> list base -> nat
countBase a l = reduce add O (map (equ a) l)
