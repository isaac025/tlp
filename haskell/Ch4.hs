module Ch4 where

import Ch1
import Data.Typeable

list0 v = equal v []

list1 v = if atom v then False else list0 (cdr v)

list2 v = if atom v then False else list1 (cdr v)

partial x = if partial x then False else True

contradiction = False

list x = if atom x then equal x [] else list (cdr x)

listBetter x =
    if natp (length x)
        then
            if atom x
                then True
                else length (cdr x) < length x
        else False

natp n = typeOf n == typeRep (Proxy :: Proxy Int)

-- The Axioms of Size
natpSize x = equal (natp (length x)) True

sizeCar x = if atom x then True else equal (length (car x) < length x) True

sizeCdr x = if atom x then True else equal (length (cdr x) < length x) True
