module bool

import serialize

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
and: bool -> bool -> bool
and true true = true
and _ _ = false

||| given a pair of natural numbers (a, b), returns true both a and b are false, otherwise returns true
or: bool -> bool -> bool
or false false = false
or _ _ = true

||| given a pair of natural numbers (a, b), returns false if both a and b are true, otherwise returns true
nand: bool -> bool -> bool
nand a b = not (and a b)

||| given a pair of natural numbers (a, b), returns true if exactly one of a or b is true, otherwise returns false
xor: bool -> bool -> bool
xor _ false = true
xor false _ = true
xor _ _ = false

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
