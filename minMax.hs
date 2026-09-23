
minMaxDQ::(Num a, Ord a) => [a] -> (a, a)
minMaxDQ [] = (0, 0)
minMaxDQ [a] = (a, a)
minMaxDQ (x:xs) | x <= minElem xs = (x, maxElem xs) 
                | x >= maxElem xs = (minElem xs, x)
                | otherwise = minMaxDQ xs
    
                


minElem::(Num a, Ord a) => [a] -> a
minElem [] = 0
minElem [a] = a
minElem (x:(y:xs)) = if x < y then minElem(x:xs) else minElem(y:xs)

maxElem::(Num a, Ord a) => [a] -> a
maxElem [] = 0
maxElem [a] = a
maxElem(x:(y:ys)) = if x > y then maxElem(x:ys) else maxElem(y:ys)