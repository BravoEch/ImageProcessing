module boolTest

import bool
import pair

--Below are some test cases for the id function

ba: bool
ba = id true

bb: bool
bb = id false

--Below are some test cases for the function constFalse

bc: bool
bc = constFalse true

bd: bool
bd = constFalse false

--Below are some test cases for the function constTrue

be: bool
be = constTrue true

bf: bool
bf = constTrue false

--Below are some test cases for the function not

bg: bool
bg = not true

bh: bool
bh = not false

--Below are some test cases for the function and

bi: bool
bi = and (mkPair true true)

bj: bool
bj = and (mkPair false false)

bk: bool
bk = and (mkPair true false)

bl: bool
bl = and (mkPair false true)

--Below are some test cases for the function or

bm: bool
bm = or (mkPair true true)

bn: bool
bn = or (mkPair false false)

bo: bool
bo = or (mkPair true false)

bp: bool
bp = or (mkPair false true)

--Below are some test cases for the function nand

bq: bool
bq = nand (mkPair true true)

br: bool
br = nand (mkPair false false)

bs: bool
bs = nand (mkPair true false)

bt: bool
bt = nand (mkPair false true)

--Below are some test cases for the function xor

bu: bool
bu = xor (mkPair true true)

bv: bool
bv = xor (mkPair false false)

bw: bool
bw = xor (mkPair true false)

bx: bool
bx = xor (mkPair false true)

{--BELOW ARE THE TESTS FOR THE EXAM!--}

--pand function test cases

pand_t_t: bool
pand_t_t = pand true true
--expect true

pand_t_f: bool
pand_t_f = pand true false
--expect false

pand_f_t: bool
pand_f_t = pand true false
--expect false

pand_f_f: bool
pand_f_f = pand false false
--expect false


--por function test cases

por_t_t: bool
por_t_t = por true true
--expect true

por_t_f: bool
por_t_f = por true false
--expect true

por_f_t: bool
por_f_t = por false true
--expect true

por_f_f: bool
por_f_f = por false false
--expect false


--pxor function test cases

pxor_t_t: bool
pxor_t_t = pxor true true
--expect false

pxor_t_f: bool
pxor_t_f = pxor true false
--expect true

pxor_f_t: bool
pxor_f_t = pxor false true
--expect true

pxor_f_f: bool
pxor_f_f = pxor false false
--expect false


--pnand function test cases

pnand_t_t: bool
pnand_t_t = pnand true true
--expect false

pnand_t_f: bool
pnand_t_f = pnand true false
--expect false

pnand_f_t: bool
pnand_f_t = pnand false true
--expect false

pnand_f_f: bool
pnand_f_f = pnand false false
--expect true
