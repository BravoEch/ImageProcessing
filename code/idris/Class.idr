||| A record type that is equivalent to:
||| (data Class = mkClass String bool Nat)
||| but where we give names to fields.
||| A Class has a title, difficultly (true or false)
||| and a credit count.

module Class

import bool
import relations
import list
import nat

record Class where
  constructor mkClass
  title: String
  difficult: bool
  fun: bool
  credits: Nat
  grade: Nat

Geo: Class
Geo = mkClass "Geology" true true 3 90

Span: Class
Span = mkClass "Spanish" false true 3 89

Anthro: Class
Anthro = mkClass "Anthropology" false true 3 95

Calc: Class
Calc = mkClass "Calculus" true false 3 82

ClassList: list Class
ClassList = Geo :: Span :: Anthro :: Calc :: nil
