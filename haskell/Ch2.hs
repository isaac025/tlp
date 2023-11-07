module Ch2 where

import Ch1

-- The Axioms of if Initial
ifTrue x y = equal (if True then x else y) x

ifFalse x y = equal (if False then x else y) y

ifSame x y = equal (if x then y else y) y

-- The Axioms of Equal (final)
equalIf x y = if (equal x y) then (equal x y) else True

-- The Axioms of Cons (final)
consCarAndCdr x = if atom x then True else equal (cons (car x) (cdr x)) x
