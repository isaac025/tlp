module Ch1 where

car = head

cons = (:)

cdr = tail

atom [] = True
atom _ = False

equal :: (Eq a) => a -> a -> Bool
equal = (==)

-- the axioms of cons
atomCons x y = equal (atom (cons x y)) False

carCons x y = x == car [x, y]

cdrCons x y = equal (cdr (cons x y)) y

-- the axioms of equal
equalSame x = equal (equal x x) True

equalSwap x y = equal (equal x y) (equal x y)
