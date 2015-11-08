module Person

import bool
import list

||| A record type that is equivalent to:
||| (data Person = mkPerson String Nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
  constructor mkPerson
  name : String
  age : Nat
  gender: bool
  height: Nat
  weight: Nat

-- An example value of type Person
p: Person
p = mkPerson "Tommy" 3 false 64 200

-- Another example value of type Person
p2: Person
p2 = mkPerson "Sally" 2 true 53 180

-- Another example value of type Person
p3: Person
p3 = mkPerson "Ashley" 5 true 52 162

PersonList: list Person
PersonList = p :: p2 :: p3 :: nil

-- And now here's the key idea: The
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person p

t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

--we get out the age of person p2
m: Nat
m = age p2
-- expect 2

-- Here we get the name of person p2
o: String
o = name p2
-- expect "Sally"
