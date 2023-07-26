-- Simple examples for computing with the Peano representation.

import Data.Nat

-- Simple addition.
add_1_2 :: Nat
add_1_2 = add (S Z) (S (S Z))

-- Solve equation: 3+x==5
solve_3_5 :: Int
solve_3_5 = let x free in add 3 x == 5 &> fromNat x
