module prime

import mult

isPrimeHelper: pair nat nat -> bool
isPrimeHelper (mkPair n (S (S O))) = not (isMult (mkPair n (S (S O))))
isPrimeHelper (mkPair n (S a)) = andp (mkPair (isPrimeHelper (mkPair (n a))) (not (isMult (mkPair (n (S a))))))

isPrime: nat -> bool
isPrime (S n) = isPrimeHelper (mkPair (S n) n)
