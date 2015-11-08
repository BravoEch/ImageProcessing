module Box

import eq
import bool

data Box t = mkBox t

--T is a type constructor. Box means nothing by itself, because it's also a type constructor.
unbox: Box t -> t
unbox (mkBox b) = b

instance (eq a) => eq (Box a) where eql (mkBox v1) (mkBox v2) = eql v1 v2
eql_Box (mkBox v1) (mkBox v2) = eql v1 v2

--instance (Serialize a) => Serialize (Box a) where
-- toString (mkBox b) = "(" ++ (toString b) ++ ")"
