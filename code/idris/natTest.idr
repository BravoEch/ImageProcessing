module natTest

import bool
import nat
import serialize

--Below are some test cases for the function that defines nat

-- zero
anat: nat
anat = O

-- one
bnat: nat
bnat = S O

-- two
cnat: nat
cnat = S (S O)

-- three
dnat: nat
dnat = S(S (S O))

--Below are some test cases for the function isZero

e: bool
e = isZero (S O)
--expect false

f: bool
f = isZero O
--expect true

--Below are some test cases for the function succ

g: nat
g = succ O

--Below are some test cases for the function pred

h: nat
h = pred (S O)

hO: nat
hO = pred O

--Below are some test cases for the function even

i:  bool
i = even O
--expect true

j: bool
j = even (S O)
--expect false

--Below are some test cases for the function ex

exTesta: nat -> nat
exTesta = ex O
--assigns first value

exTesta1: nat
exTesta1 = exTesta (S (S O))
--expect O

exTestb: nat -> nat
exTestb = ex (S (S O))
--assigns first value

exTestb1: nat
exTestb1 = exTestb O
--expect (S O)

exTestb2: nat
exTestb2 = exTestb (S (S O))
--expect (S (S (S (S O))))

--Below are some test cases for the function le

leTesta: nat -> bool
leTesta = le O
--assigns first value

leTesta1: bool
leTesta1 = leTesta O
--expect true

leTesta2: bool
leTesta2 = leTesta (S (S O))
--expect true

leTestb: nat -> bool
leTestb = le (S O)
--assigns first value

leTestb1: bool
leTestb1 = leTestb O
--expect false

leTestb2: bool
leTestb2 = leTestb (S (S O))
--expect true

--Below are some test cases for the function gt

gtTesta: nat -> bool
gtTesta = gt O
--assigns first value

gtTesta1: bool
gtTesta1 = gtTesta O
--expect false

gtTesta2: bool
gtTesta2 = gtTesta (S O)
--expect false

gtTestb: nat -> bool
gtTestb = gt (S O)
--assigns first value

gtTestb1: bool
gtTestb1 = gtTestb O
--expect true

gtTestb2: bool
gtTestb2 = gtTestb (S (S O))
--expect false

--Below are some test cases for the function lt

ltTesta: nat -> bool
ltTesta = lt O
--assigns first value

ltTesta1: bool
ltTesta1 = ltTesta O
--expect false

ltTesta2: bool
ltTesta2 = ltTesta (S O)
--expect true

ltTestb: nat -> bool
ltTestb = lt (S O)
--assigns first value

ltTestb1: bool
ltTestb1 = ltTestb (S (S O))
--expect true

--Below are some test cases for the function ge

geTesta: nat -> bool
geTesta = ge O
--assigns first value

geTesta1: bool
geTesta1 = geTesta O
--expect true

geTesta2: bool
geTesta2 = geTesta (S O)
--expect false

geTestb: nat -> bool
geTestb = ge (S (S O))
--assigns first value

geTestb1: bool
geTestb1 = geTestb (S O)
--expect true

--Below are some test cases for the function even

ag: bool
ag = even O
--expect true

ah: bool
ah = even (S O)
--expect false

ai: bool
ai = even (S (S O))
--expect true

--Below are some test cases for the function odd

aj: bool
aj = odd O
--expect false

ak: bool
ak = odd (S O)
--expect true

al: bool
al = odd (S (S O))
--expect false

--Below are some test cases for the function add

addTesta: nat -> nat
addTesta = add O
--assigns first value

addTesta1: nat
addTesta1 = addTesta (S O)
--expect (S O)

addTesta2: nat
addTesta2 = addTesta O
--expect O

addTesta3: nat
addTesta3 = addTesta (S (S O))
--expect (S (S (S O)))

--Below are some test cases for the function mult

multTesta: nat -> nat
multTesta = mult O
--assigns first value

multTesta1: nat
multTesta1 = multTesta (S O)
--expect O

multTestb: nat -> nat
multTestb = mult (S (S O))
--assigns first value

multTestb1: nat
multTestb1 = multTestb (S (S (S (S (S O)))))
--expect (S (S (S (S (S (S (S (S (S (S O))))))))))

--Below are some test cases for the function fact

factTesta: nat
factTesta = fact O
--expect (S O)

factTestb: nat
factTestb = fact (S (S O))
--expect (S (S O))

--Below are some test cases for the function sub

subTesta: nat -> nat
subTesta = sub (S (S O))
--assigns first value

subTesta1: nat
subTesta1 = subTesta (S O)
--expect (S O)

--Below are some test cases for the function fib

fibTesta: nat
fibTesta = fib O
--expect (S O)

fibTestb: nat
fibTestb = fib (S O)
--expect (S O)

fibTestc: nat
fibTestc = fib (S (S O))
--expect (S (S O))

s: String
s = toString ah
