module Ch3 where

import Ch1
import Ch2

pair x y = cons x (cons y [])

firstOf x = car x

secondOf x = car (cdr x)

firstOfPair a b = equal (firstOf (pair a b)) a

secondOfPair a b = equal (secondOf (pair a b)) b

inPair e x = if equal (fst x) e then True else equal (snd x) e
