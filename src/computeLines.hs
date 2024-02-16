{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- computeLines
-}

type Line = ([Int], [Int], [Int])

infZero:: [Int]
infZero = repeat 0

initLine::[Int]
initLine = infZero ++ [1] ++ infZero

-- initLine::Line
-- initLine = (infZero, [1], infZero)

displayFrameAroundOne :: Int -> [Int] -> [Int]
displayFrameAroundOne n line = take (2 * n + 1) $ drop (length line `div` 2 - n) line



getFrame:: Int -> Int -> [Int] -> [Int]
getFrame id_from id_to l = take (id_to - id_from) $ drop id_from l

moveLastNToMiddle :: Int -> Line -> Line
moveLastNToMiddle n (left, middle, right) = (newLeft, newMiddle, right)
  where
    (restLeft, movedToMiddle) = splitAt (length left - n) left
    newLeft = restLeft
    newMiddle = movedToMiddle ++ middle
