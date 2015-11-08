module friend

import bool
import pair

||| A friend is someone who is or isn't trustworthy, who has a name,

data friend = mkFriend bool String

f1: friend
f1 = mkFriend true "Tommy" 23

f2: friend
f2 = mkFriend false "Barry" 34

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> Nat
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b
