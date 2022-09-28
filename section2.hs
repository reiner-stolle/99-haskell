-- #########Exercise 11###############
-- (*) Modified run-length encoding.

-- Modify the result of problem 10 in such a way that if an element 
-- has no duplicates it is simply copied into the result list. 
-- Only elements with duplicates are transferred as (N E) lists.

-- ########Exercise 12################
-- Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

-- ########Exercise 13################
-- Implement the so-called run-length encoding data compression method directly. 
-- I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. 
-- As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

-- ########Exercise 14################
-- (*) Duplicate the elements of a list.
-- 
dupli :: [a] -> [a] 
dupli [x] = [x,x]
dupli (x:xs) = [x] ++ [x] ++ dupli (xs) 

-- ########Exercise 15################
-- (**) Replicate the elements of a list a given number of times.
-- repli' :: [a] -> Int -> [a]

-- ########Exercise 16################
-- (**) Drop every N'th element from a list.


-- ########Exercise 17################
-- Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.

-- ########Exercise 18################
-- (**) Extract a slice from a list.

-- Given two indices, i and k, the slice is the list containing the elements between 
-- the i'th and k'th element of the original 
-- list (both limits included). Start counting the elements with 1.


-- -- ########Exercise 19################
-- (**) Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).


-- -- ########Exercise 20################
-- (*) Remove the K'th element from a list.

delete_kth :: [a] -> Int -> [a]
delete_kth [] n = error "empty List or element not in list"
delete_kth (x:[]) b 
                |b-1 == 0 = []
                |otherwise = delete_kth [] (b-2)
delete_kth (x:xs) b 
                |b-1 == 0 = xs
                |otherwise = [x] ++ delete_kth xs (b-1) 