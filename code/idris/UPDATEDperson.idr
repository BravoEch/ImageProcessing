record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  female: bool

setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p

setFemale: Person -> Nat -> Person
setFemale p f = record { female = f } p
