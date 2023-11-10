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

addAtoms x ys =
    if length x == 1
        then
            if member (car x) ys
                then ys
                else cons (car x) ys
        else addAtoms (cons (car x) []) (addAtoms (cdr x) ys)

atoms x = [x]
