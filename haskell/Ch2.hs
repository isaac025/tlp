module Ch2 where

import Ch1

-- The Axioms of if Initial
ifTrue x y = equal (if True then x else y) x

ifFalse x y = equal (if False then x else y) y

ifSame x y = equal (if x then y else y) y
