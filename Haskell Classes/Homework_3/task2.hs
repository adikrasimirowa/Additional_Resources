main :: IO()
main = do
    print $ genWords t1 -- ["acf","acd","abe","cf","cd","f","d","be","e"]
    print $ genWords t2 -- ["acd","ab","cd","d","b"]
    print $ genWords t3 -- ["abdh","abdi","abe","acf","acg","bdh","bdi","be","dh","di","h","i","e","cf","cg","f","g"]
    return ()

------------------------------------------------------------------------------------------

data BTree = Empty | Node Char BTree BTree
 deriving (Show)

t1 :: BTree
t1 = Node 'a' (Node 'c' (Node 'f' Empty Empty) (Node 'd' Empty Empty)) (Node 'b' Empty (Node 'e' Empty Empty))

t2 :: BTree
t2 = Node 'a' (Node 'c' (Node 'd' Empty Empty) Empty) (Node 'b' Empty Empty)

t3 :: BTree
t3 = Node 'a' (Node 'b' (Node 'd' (Node 'h' Empty Empty) (Node 'i' Empty Empty)) (Node 'e' Empty Empty)) (Node 'c' (Node 'f' Empty Empty) (Node 'g' Empty Empty)) 

------------------------------------------------------------------------------------------

containsWord :: BTree -> [Char] -> Bool
containsWord Empty _ = False
containsWord (Node value Empty Empty) [x] = value == x
containsWord (Node value left right) (x:xs)
 | value == x = helper left xs || helper right xs
 | otherwise = containsWord left xs || containsWord right xs
containsWord _ _ = True

helper :: BTree -> [Char] -> Bool
helper Empty _ = True
helper (Node value left right) (x:xs)
 | value == x = helper left xs || helper right xs
 | otherwise = False
helper _ _ = False

genWords :: BTree -> [String]
genWords Empty = []
genWords (Node value Empty Empty) = [[value]]
genWords tree@(Node value left right) = filter (containsWord tree) $ map (value:) (genWords left)
                                                                        ++ map (value:) (genWords right)
                                                                        ++ genWords left
                                                                        ++ genWords right