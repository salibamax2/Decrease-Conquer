
minMaxDQ::(Num a, Ord a) => [a] -> (a, a)
minMaxDQ [] = (0, 0)
minMaxDQ [a] = (a, a)
minMaxDQ (x:xs) = (min x minTail, max x maxTail)
        where
            (minTail, maxTail) = minMaxDC xs
    
            

minElem::(Num a, Ord a) => [a] -> a
minElem [] = 0
minElem [a] = a
minElem (x:xs) = min(x minElem xs)

maxElem::(Num a, Ord a) => [a] -> a
maxElem [] = 0
maxElem [a] = a
maxElem(x:ys) = max(x maxElem ys)