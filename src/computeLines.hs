{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- computeLines
-}

import Rules (applyRule, Rule)

type Line = ([Int], [Int])

infZero:: [Int]
infZero = repeat 0

initLine::Line
initLine = (infZero, 1 : infZero)

listToTuples :: [Int] -> [(Int, Int, Int)]
listToTuples (x:y:z:xs) = (x, y, z) : listToTuples (y:z:xs)
listToTuples _ = []

newList::Rule -> [Int] -> [Int]
newList rule list = map (applyRule rule) $ listToTuples list

-- computeList :: Rule -> [Int] -> [Int]
-- computeList rule (a:b:c:rx) = applyRule rule (a, b, c) : computeList rule (b:c:rx)
-- computeList _ _ = []
--
moveLast::Line -> Line
moveLast (left, right) = (init left, last left:right)

computeLine::Rule -> Line -> Line
computeLine rule (left, ra:rb:right) = moveLast (newList rule (left++[ra]++[rb]), newList rule (ra:rb:right))

getSecond::Line -> [Int]
getSecond (_,right) = right
-- getFrame::Int -> Line -> [Int]
-- getFrame limit (_, right) = take limit right
--
-- computeRes::Line -> Rule -> Int -> Line
-- computeRes line _ 0 = line
-- computeRes line rule limit = computeRes (computeLine rule line) rule (limit - 1)
--
-- getRes::Rule -> Int -> Int -> [Int]
-- getRes rule limit turn = getFrame limit $ computeRes initLine rule turn
