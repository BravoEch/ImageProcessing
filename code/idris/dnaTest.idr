module dnaTest

import dna
import nat
import list
import pair

--Test cases for complement_base

complement_base1: base
complement_base1 = complement_base A

--Test cases for complement_strand

complement_strand1: list base
complement_strand1 = complement_strand (A :: T :: C :: G :: nil)

--Test cases for strand1

strand1a: list base
strand1a = strand1 ((mkPair A T) :: nil)

--Test cases for strand2

strand2a: list base
strand2a = strand2 ((mkPair C G) :: nil)

--Test cases for complete

complete1: list (pair base base)
complete1 = complete (A :: T :: C :: G :: nil)

--Test cases for countBase

countBase1: nat
countBase1 = countBase A (A :: T :: C :: G :: nil)
