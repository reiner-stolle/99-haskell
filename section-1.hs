import Data.Set (Set)
import qualified Data.Set as Set


-- list comprehensions     

-- As Pattern

-- ##########Problem 1##########
-- (*) Find the last element of a list. 

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x 
myLast (x:xs) = myLast (xs)

-- important! remember to keep the base case before recursion starts
 
-- ##########Problem 2##########
-- (*) Find the last but one element of a list. 

myButLast :: [a] -> a 
myButLast xs = myLast (init xs) 

-- myButLast' :: [a] -> a 
myButLast' = head . tail . reverse

myButLast'' = last . init 

-- ##########Problem 3##########
-- (*) Find the K'th element of a list. The first element in the list is number 1. 

elementAt' :: [a] -> Int -> a 
elementAt' (x:_) 1 = x
elementAt' (_:xs) i = elementAt' (xs) (i-1)
elementAt' _ _ = error "index out of bounds"

-- ##########Problem 4##########
-- (*) Find the number of elements of a list. 

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = myLength (xs) + 1 
        
-- ##########Problem 5##########     
-- (*) Reverse a list. 

myReverse :: [a] -> [a]
myReverse (x:xs) = myReverse xs ++ [x] 
myReverse [] = []

-- ##########Problem 6##########        
-- (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).  
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome (x:xs)
            |reverse(x:xs) == (x:xs) = True 
            |otherwise = False 

-- ##########Problem 7##########        
-- (**) Flatten a nested list structure. 
data NestedList a = Elem a | List [NestedList a]

flattenlist :: NestedList a -> [a]
flattenlist (Elem x)        = [x]
flattenlist (List (x:xs))   = flattenlist x ++ flattenlist (List xs) 
flattenlist (List [])       = []  

beepboop :: NestedList Char
beepboop = List[Elem 'a', Elem 'b', List [Elem 'd', Elem 'w', List [Elem 'c', List [Elem 'w']]]]

-- ##########Problem 8##########        
-- (**) Eliminate consecutive duplicates of list elements.
compress' :: String -> String  
compress' []     = []
compress' (x:xs) = x : (compress' $ dropWhile (== x) xs)

-- compress (x:xs) = head concatenated with (compress((dropWhile (==x) xs)))


-- idea: qsort, some sort, then iterate through list


-- compress ['a','d','e','a']
-- ['a','d','e']


-- -- ##########Problem 9##########    
-- (**) Pack consecutive duplicates of list elements into sublists. 
-- If a list contains repeated elements they should be placed in separate sublists. 

-- (pack '(a a a a b c c a a d e e e e))
-- ((A A A A) (B) (C C) (A A) (D) (E E E E))

-- pack' :: [a] -> [a]
-- pack' [] = []
-- pack' (x:xs) = 



-- ##########Problem 10##########
-- (*) Run-length encoding of a list. 
-- Use the result of problem P09 to implement the so-called run-length encoding data compression method. 
-- Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

