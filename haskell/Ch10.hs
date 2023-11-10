module Ch10 where

import Ch1
import Ch4
import Prelude hiding (align, rotate)

rotate x = cons (car x) (cons (cdr (car x)) (cdr x))

align x =
    if atom x
        then x
        else
            if atom (car x)
                then cons (car x) (align (cdr x))
                else align (rotate x)

wt x =
    if atom x
        then 1
        else (wt (cons (car x) [])) + (wt (cons (car x) [])) + (wt (cdr x))

natpWt x = equal (natp (wt x)) True

-- the axioms of + and <

identityPlus x =
    if natp x
        then equal (0 + x) x
        else True

commutePlus x y = equal (x + y) (y + x)

associatePlus x y z = equal ((x + y) + z) (x + (y + z))

positivesPlus x y =
    if 0 < x
        then
            if 0 < y
                then equal (0 < (x + y)) True
                else True
        else True

natpPlus x y =
    if natp x
        then
            if natp y
                then equal (natp (x + y)) True
                else True
        else True

commonAddendsLess x y z = equal ((x + z) < (y + z)) (x < y)

positiveWt x = equal (0 < (wt x)) True

alignAlign x = equal (align (align x)) (align x)
