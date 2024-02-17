{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- displayLine
-}

type Line = ([Int], [Int])

convertLine::[Int] -> [Char]
convertLine (1:endlist) = '*' : convertLine endlist
convertLine (_:endlist) = ' ' : convertLine endlist
convertLine _ = " "

displayLine::[Int] -> IO()
displayLine = print . convertLine
