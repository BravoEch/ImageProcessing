module mult

import nat
import pair
import bool

isMult: pair nat nat -> bool
isMult (mkPair O n) = true
isMult (mkPair a b) = (andp (mkPair (gep (mkPair a b)) (isMult (mkPair (subp (mkPair a b)) b))))

--Below are some test cases for the function isMult

am: bool
am = isMult (mkPair (S (S O)) (S (S (S (S O)))))

bm: bool
bm = isMult (mkPair (S (S (S (S O)))) (S (S O)))
