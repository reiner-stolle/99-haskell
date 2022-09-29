-- Problem 41
-- (**) Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

-- In most cases, if an even number is written as the sum of two prime numbers, 
-- one of them is very small. 
-- Very rarely, the primes are both bigger than say 50. 
-- Try to find out how many such cases there are in the range 2..3000.

-- Example:

-- (table A B (and A (or A B)))
-- true true true
-- true fail true
-- fail true fail
-- fail fail fail
-- Example in Haskell:

-- λ> table (\a b -> (and' a (or' a b)))
-- True True True
-- True False True
-- False True False
-- False False False





-- Problem 42
-- (*) Truth tables for logical expressions (2).

-- Continue problem P46 by defining and/2, or/2, etc as being operators. 
-- This allows to write the logical expression in the more natural way, as in the example: 
-- A and (A or not B). Define operator precedence as usual; i.e. as in Java.

-- Example:

-- * (table A B (A and (A or not B)))
-- true true true
-- true fail true
-- fail true fail
-- fail fail fail
-- Example in Haskell:

-- λ> table2 (\a b -> a `and'` (a `or'` not b))
-- True True True
-- True False True
-- False True False
-- False False False