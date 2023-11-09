module Ch5 where

import Ch1

memb xs =
    if atom xs
        then False
        else
            if equal (car xs) '?'
                then True
                else memb (cdr xs)

remb xs =
    if atom xs
        then []
        else
            if equal (car xs) '?'
                then remb (cdr xs)
                else cons (car xs) (remb (cdr xs))

membRemb0 = equal (memb (remb [])) False

membRemb1 x1 = equal (memb (remb (cons x1 []))) False

membRemb2 x1 x2 = equal (memb (remb (cons x2 (cons x1 [])))) False

membRemb3 x1 x2 x3 = equal (memb (remb (cons x3 (cons x2 (cons x1 []))))) False
