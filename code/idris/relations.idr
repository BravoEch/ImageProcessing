module relations

import bool
import nat
import list
import pair

query: (value -> value -> value) -> value -> (tuple -> value) -> (tuple -> bool) -> (list tuple) -> value
query reduce id project select relation = list.foldr reduce id (map project (filter select relation))

query2:  (list tuple) -> (tuple -> bool) -> (tuple -> value) -> (value -> value -> value) -> value -> value
query2 relation select project reduce id = list.foldr reduce id (map project (filter select relation))

countOne: a -> Nat
countOne v = 1

count: (list tuple) -> (tuple -> bool) -> Nat
count rel sel = query2 rel sel countOne plus 0

sum: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum rel sel proj = query2 rel sel proj plus 0

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj =  mkPair (sum rel sel proj) (count rel sel)
