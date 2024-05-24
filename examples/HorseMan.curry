------------------------------------------------------------------------------
-- This example uses Peano number to define a
-- relation between men, horses and their heads and feet.
--
-- Due to the use of type `Nat`, which is also an instance of class `Num`,
-- one can use standard arithmetic notation but solve equations
-- (by narrowing).
------------------------------------------------------------------------------

import Data.Nat

-- Relation between men, horses and their heads and feet.
horseman :: Nat -> Nat -> Nat -> Nat -> Bool
horseman m h heads feet =  heads =:= m + h  &  feet =:= 2 * m + 4 * h

-- Some queries:

-- How many men and horses have 3 heads and 8 feet?
goal1 m h = horseman m h 3 8 -- or: (S(S(S Z))) (S(S(S(S(S(S(S(S Z))))))))
-- > goal1 m h  where m,h free

-- How many men and horses have 8 heads and 20 feet?
goal2 m h = horseman m h 8 20 --(toNat 8) (toNat 20)
-- > goal2 m h  where m,h free

-- Relation between men and horses and feets with two heads:
goal3 m h hd = horseman m h 2 hd
-- > goal3 m h hd  where m,h,hd free
