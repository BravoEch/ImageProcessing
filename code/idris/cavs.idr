module cavs

import list

data player = LeBron  | Kyrie  | Kevin

||| Points, rebounds, assists
data stats = mkStats player Nat Nat Nat

James: stats
James = mkStats LeBron 27 7 7

Irving: stats
Irving = mkStats Kyrie 21 4 6

Love: stats
Love = mkStats Kevin 19 12 2

PlayerName: stats -> player
PlayerName (mkStats b p r a) = b

Points: stats -> Nat
Points (mkStats b p r a) = p

Rebounds: stats -> Nat
Rebounds (mkStats b p r a) = r

Assists: stats -> Nat
Assists (mkStats b p r a) = a

liststats: list stats
liststats = cons James (cons Irving (cons Love nil))
