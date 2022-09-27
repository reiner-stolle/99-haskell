data Tree = Node Int Tree Tree | Nil deriving Show

collapse :: Tree -> [Int]
collapse Nil = []
collapse (Node x y z) = (collapse y) ++ [x] ++ (collapse z)

check :: Tree -> Bool 
check t = ordered (collapse t)

ordered :: [Int] -> Bool 
ordered [] = True
ordered (a:[]) = True
ordered (a:(b:l)) = (a<= b) && (ordered (b:l)) 

exampleTree :: Tree
exampleTree = Node 6 (Node 2 (Nil) (Nil) ) (Node 3 (Nil) (Nil))


addL :: [Int] -> Int
addL [] = 0
addL (x:xs) = x + (addL xs)

data UTree = UI [UTree] | UL Int deriving Show

exampleTree2 :: UTree
exampleTree2 = UI[UL 3, UL 2, UI [UL 4]]

addU :: UTree -> Int 
addU (UL i) = i
addU (UI ut) = addL (map addU ut)