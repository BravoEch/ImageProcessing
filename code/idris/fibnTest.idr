module fibnTest

import nat
import fibn

--Below are some test cases for fibnext

fa: nat
fa = nextfib O

fb: nat
fb = nextfib (S O)

fc: nat
fc = nextfib (S (S O))

fd: nat
fd = nextfib (S (S (S O)))

fe: nat
fe = nextfib (S (S (S (S O))))
