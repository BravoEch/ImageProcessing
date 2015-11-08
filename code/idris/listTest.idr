module listTest

import nat
import list
import eq
import Serialize
import bool
import ite

--Below are some test cases for the function length

{-len_l1: list nat -> nat
len_l1 = length nil
--expect 0

len_l2: list nat -> nat
len_l2 = length O :: nil
--expect 1

len_l3: nat
len_l3 = length O :: S O :: S (S O) :: nil
--expect 3

--Below are some test cases for the function append

list1: list Nat
list1 = nil
--expect ()

list2: list Nat
list2 = (++) O :: (S O) :: nil

list3: list Nat
list3 = (++) O :: (S O) :: (S (S O)) :: nil-}

l1: list nat
l1 = nil

l2: list nat
l2 = O :: nil

l3: list nat
l3 = (S O) :: nil

--Below are some test cases for map

map1: list bool
map1 = map even (O :: nil)

map2: list bool
map2 = map even ((S O) :: nil)

filter1: (nat -> bool) -> list nat -> list nat
filter1 f nil = nil
filter1 f (h :: t) = ite (f h) (h :: (filter f t)) (filter f t)

--Below are some test cases for ite

ite: bool -> String -> String -> String
ite true "yes" "no" = "yes"
ite false "yes" "no" = "no"

isThree: bool
isThree = (member O l3)
--expect false

s: String
s = toString l2
