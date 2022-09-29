-- #########Exercise 21##########
-- Insert an element at a given position into a list.

-- Example:

-- * (insert-at 'alfa '(a b c d) 2)
-- (A ALFA B C D)
-- Example in Haskell:

-- λ> insertAt 'X' "abcd" 2
-- "aXbcd"


-- ##########Problem 22##########

-- Create a list containing all integers within a given range.
-- Example:

-- * (range 4 9)
-- (4 5 6 7 8 9)
-- Example in Haskell:

-- λ> range 4 9
-- [4,5,6,7,8,9]

range' :: Int -> Int -> [Int]
range' n m
        |n > m = error "not possible"
        |n == m = [m]
        |otherwise = [n] ++ range' (n+1) (m) 
        