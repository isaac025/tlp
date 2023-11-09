module Ch8 where

import Ch1

member x ys =
    if atom ys
        then False
        else
            if equal x (car ys)
                then True
                else member x (cdr ys)

isSet xs =
    if atom xs
        then True
        else
            if member (car xs) (cdr xs)
                then False
                else isSet (cdr xs)

{-
addAtoms x ys =
    if atom x
        then
            if member x ys
                then ys
                else cons x ys
        else addAtoms (car x) (addAtoms (cdr x) ys)
-}
