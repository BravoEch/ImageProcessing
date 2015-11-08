module ClassTest

import Class
import relations
import bool
import nat
import list
import pair

--Below are some test cases for Class (See below for RELATIONS TEST CASES)

f: String
f = title Geo
--expect Geology

g: String
g = title Span
--expect Spanish

h: String
h = title Anthro
--expect Anthropology

i: bool
i = difficult Geo
--expect true

j: bool
j = difficult Span
--expect false

k: bool
k = difficult Anthro
--expect false

l: Nat
l = credits Geo
--expect 3

m: Nat
m = credits Span
--expect 3

n: Nat
n = credits Anthro
--expect 3


--Below are some test cases for relations

countDifficult: Nat
countDifficult = count ClassList difficult
--expect 2

countFun: Nat
countFun = count ClassList fun
--expect 3

sumCreditsDifficult: Nat
sumCreditsDifficult = sum ClassList difficult credits
--expect 6

ClassTitle: String
ClassTitle = query (++) "" title difficult ClassList
--expect "GeologyCalculus"

sumDifficultGrade: Nat
sumDifficultGrade = sum ClassList difficult grade
--expect 172

averageDifficultGrade: pair Nat Nat
averageDifficultGrade = ave_rel ClassList difficult grade
--expect 172 2
