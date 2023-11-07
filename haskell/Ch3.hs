module Ch3 where

import Ch1
import Ch2

pair = (,)

firstOfPair a b = equal (fst (pair a b)) a

secondOfPair a b = equal (snd (pair a b)) a

inPair e x = if equal (fst x) e then True else equal (snd x) e
