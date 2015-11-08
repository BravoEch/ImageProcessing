module Animals

data pair a b = mkPair (a b)
data a = bird | dog | cat
data b = x | y

Animalx: a b -> mkPair a b
Animalx (bird x) = bird x
