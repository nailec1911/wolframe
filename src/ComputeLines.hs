{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- computeLines
-}


module ComputeLines
(
    Line,
    initLine,
    computeListL,
    computeListR,
    computeLine,
    moveLine,
    getFirstLine,
) where


import Rules
import Lib

-- listToTuples :: [Int] -> [(Int, Int, Int)]
-- listToTuples (x:y:z:xs) = (x, y, z) : listToTuples (y:z:xs)
-- listToTuples _ = []
--
-- newList::Rule -> [Int] -> [Int]
-- newList conv list = map (applyRule conv) $ listToTuples list

computeListR :: Rule -> [Int] -> [Int]
computeListR conv (a:b:c:rx)
    = applyRule conv (a, b, c) : computeListR conv (b:c:rx)
computeListR _ _ = []

computeListL :: Rule -> [Int] -> [Int]
computeListL conv (a:b:c:rx)
    = applyRule conv (c, b, a) : computeListL conv (b:c:rx)
computeListL _ _ = []

computeLine :: Rule -> Line -> Line
computeLine conv (la:lb:left, ra:rb:right)
    = (computeListL conv (ra:la:lb:left), computeListR conv (la:ra:rb:right))
computeLine _ line = line

moveLine :: Int -> Line -> Line
moveLine 0 line = line
moveLine ind (la:left, ra:right)
    | ind > 0 = moveLine (ind - 1) (left, la:ra:right)
    | otherwise = moveLine (ind + 1) (ra:la:left, right)
moveLine _ line = line

getFirstLine :: Int -> Rule -> Line -> Line
getFirstLine 0 _ line = line
getFirstLine ind conv line
    = getFirstLine (ind - 1) conv (computeLine conv line)
