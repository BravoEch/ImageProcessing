module bool

--Data Type
data bool = true | false

--Functions (if both are defined, it is called a TOTAL FUNCTION)
id: bool -> bool
--id true = true (we don't need to put this in the code, this is just
  --so you know that what's happening)
--id false = false (we don't need to put this in the code either, for
  --the same reason...see below (id x =x takes care of everything for us))
id x = x
--You can pick any value to use instead of x (i.e. b = b)
--This technique is called PATTERN MATCHING

--Function 2
constTrue: bool -> bool
--constTrue true = true (this is just so you know what it's saying)
--constTrue false = true (this is just so you know what it's saying)
constTrue _ = true
--The underscore above stands in place for ANY VALUE

--Function 3
constFalse: bool -> bool
--constFalse true = false
--constFalse false = false
constFalse _ = false
