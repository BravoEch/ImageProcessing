module boolTest

import bool

--Below are some test cases for the id function

ba: bool
ba = id true
--expect true

bb: bool
bb = id false
--expect true

--Below are some test cases for the function constFalse

bc: bool
bc = constFalse true
--expect false

bd: bool
bd = constFalse false
--expect false

--Below are some test cases for the function constTrue

be: bool
be = constTrue true
--expect true

bf: bool
bf = constTrue false
--expect true

--Below are some test cases for the function not

bg: bool
bg = not true
--expect false

bh: bool
bh = not false
--expect true

--Below are some test cases for the function and

bi: bool
bi = and true true
--expect true

bj: bool
bj = and false false
--expect false

bk: bool
bk = and true false
--expect false

bl: bool
bl = and false true
--expect false

--Below are some test cases for the function or

bm: bool
bm = or true true
--expect true

bn: bool
bn = or false false
--expect false

bo: bool
bo = or true false
--expect true

bp: bool
bp = or false true
--expect true

--Below are some test cases for the function nand

bq: bool
bq = nand true true
--expect false

br: bool
br = nand false false
--expect true

bs: bool
bs = nand true false
--expect false

bt: bool
bt = nand false true
--expect false

--Below are some test cases for the function xor

bu: bool
bu = xor true true
--expect false

bv: bool
bv = xor false false
--expect false

bw: bool
bw = xor true false
--expect true

bx: bool
bx = xor false true
--expect true
