module Ch7 where

import Ch1
import Ch4

ctx x e =
    if atom x
        then equal (car x) e
        else ctx (cdr x) e
