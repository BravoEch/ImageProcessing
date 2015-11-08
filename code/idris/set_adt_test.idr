module set_spec_Test

import set_adt
import bool
import option
import pair
import list
import nat
import eq
import Serialize

-- imports needed for list-based implementation
import list
import ite

--Below are some lists

l1: list nat
l1 = nil

l2: list nat
l2 = (O :: nil)

l3: list nat
l3 = (O :: (S O) :: nil)

l4: list nat
l4 = (O :: (S O) :: (S (S O)) :: nil)

EmptyTest1: bool
EmptyTest1 = isEmpty (mkSet l1)
--expect true

EmptyTest2: bool
EmptyTest2 = isEmpty (mkSet l2)
--expect falsel

--set_insert test cases

set_insert1: set nat
set_insert1 = set_insert O (mkSet l1)
--expect (O :: nil)

set_insert2: set nat
set_insert2 = set_insert (S (S O)) (mkSet l3)
--expect ((S (S O)) :: O :: S O :: nil)

--set_remove test cases

set_remove1: set nat
set_remove1 = set_remove O (mkSet l3)
--expect (S O :: nil)

set_remove2: set nat
set_remove2 = set_remove (S O) (mkSet l4)
--expect (O :: S (S O) :: nil)

--set_cardinality test cases

set_cardinality1: nat
set_cardinality1 = set_cardinality (mkSet l1)
--expect O

set_cardinality2: nat
set_cardinality2 = set_cardinality (mkSet l4)
--expect (S (S (S O)))

--set_member test cases

set_member1: bool
set_member1 = set_member O (mkSet l2)
--false

set_member2: bool
set_member2 = set_member O (mkSet l4)
--true

--set_union test cases

set_union1: set nat
set_union1 = set_union (mkSet l1) (mkSet l2)
--expect (O :: nil)

set_union2: set nat
set_union2 = set_union (mkSet l3) (mkSet l4)
--expect (O :: S O :: S (S O) :: nil)

--set_intersection test cases

set_intersection1: set nat
set_intersection1 = set_intersection (mkSet l1) (mkSet l2)
--expect nil

set_intersection2: set nat
set_intersection2 = set_intersection (mkSet l3) (mkSet l4)
--expect (O :: (S O) :: nil)

--set_difference test cases

set_difference1: set nat
set_difference1 = set_difference (mkSet l1) (mkSet l2)
--expect nil

set_difference2: set nat
set_difference2 = set_difference (mkSet l4) (mkSet l3)
--expect (S (S O) nil)

--set_forall test cases

set_forall1: bool
set_forall1 = set_forall even (mkSet l2)
--expect true

set_forall2: bool
set_forall2 = set_forall odd (mkSet l4)
--expect false

--set_exists test cases

set_exists1: bool
set_exists1 = not (isEmpty (mkSet (filter odd l2)))
--expect false

set_exists2: bool
set_exists2 = not (isEmpty (mkSet (filter odd l4)))
--expect true

--set_witness test cases

set_witness1: option nat
set_witness1 = set_witness even (mkSet l2)
--expect some O

set_witness2: option nat
set_witness2 = set_witness odd (mkSet l2)
--expect none

--set_product test cases

set_product1: set (pair nat nat)
set_product1 = set_product (mkSet l3) (mkSet l4)
--expect (mkPair O O :: mkPair O (S O) :: mkPair O (S (S O)) :: mkPair (S O) O :: mkPair (S O) (S O) :: mkPair (S O) (S (S O)) :: nil)

set_product2: set (pair nat nat)
set_product2 = set_product (mkSet l2) (mkSet l4)
--expect (mkPair O O :: mkPair O (S O) :: mkPair O (S (S O)) :: nil)

--set_eql test cases

set_eql1: bool
set_eql1 = set_eql (mkSet l2) (mkSet l4)
--expect false

set_eql2: bool
set_eql2 = set_eql (mkSet l4) (mkSet l4)
--expect true

--set_toString test cases

set_toString1: String
set_toString1 = set_toString (mkSet l2)
--expect "{Z}"

set_toString2: String
set_toString2 = set_toString (mkSet l4)
--expect "{Z, sZ, ssZ}"
