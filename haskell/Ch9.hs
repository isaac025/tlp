module Ch9 where

import Ch1
import Ch8

setAtoms a = equal (isSet (atoms a)) True

setAddAtoms a bs =
    if isSet bs
        then equal (isSet (addAtoms a bs)) True
        else True

listInduction x =
    if atom x
        then []
        else cons (car x) (listInduction (cdr x))

starInduction x = undefined

{-    if atom x
        then x
        else cons (starInduction (car x)) (starInduction (cdr x))-}

isSetT xs =
    if isSet xs
        then equal (isSet xs) True
        else True

isSetF xs =
    if isSet xs
        then True
        else equal (isSet xs) False
