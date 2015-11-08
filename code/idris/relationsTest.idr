module relationsTest

import bool
import nat
import list
import pair
import Person
import relations

--Below are the given examples and the demonstration code

women: list Person
women = filter gender PersonList

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (map age (filter gender PersonList))

years': Nat
years' = query plus 0 age gender PersonList

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender PersonList

names: String
names = query (++) "" name gender PersonList

years'': Nat
years'' = query2 PersonList gender age plus 0

totalInches'': Nat
totalInches'' = query2 PersonList gender height mult 1

names'': String
names'' = query2 PersonList gender name (++) ""

number: Nat
number = query2 PersonList gender countOne plus 0

aveAge: pair Nat Nat
aveAge = mkPair (query2 PersonList gender age plus 0) (query2 PersonList gender countOne plus 0)


--BELOW ARE MY NEW EXAMPLES

totalWoman: Nat
totalWoman = count PersonList gender
--expect 2

averageWomanHeight: pair Nat Nat
averageWomanHeight = ave_rel PersonList gender height
--expect 105 2

averageWomanAge: pair Nat Nat
averageWomanAge = ave_rel PersonList gender age
--expect 7 2

totalWomanWeight: Nat
totalWomanWeight = query2 PersonList gender weight plus 0
--expect 342

averageWomanWeight: pair Nat Nat
averageWomanWeight = ave_rel PersonList gender weight
--expect 342 2
