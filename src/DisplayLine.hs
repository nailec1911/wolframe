{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- displayLine
-}

module DisplayLine
(
    convertLine,
    displayFrame,
) where

import ComputeLines
import Data.List (init)

convertLine::[Int] -> [Char]
convertLine (1:endlist) = '*' : convertLine endlist
convertLine (_:endlist) = ' ' : convertLine endlist
convertLine _ = " "

displayFrame:: Int -> Line -> IO()
displayFrame size (_,line) = print $ take size $ convertLine line

displayLines ::  Line -> Int -> Int -> Int -> Int -> IO ()
displayLines line rule 0 move size = return ()
displayLines line rule n move size =
        displayFrame size (moveLine move line)
        >> displayLines (computeLine rule line) rule (n - 1) move size


wolframe::Int -> Int -> Int -> Int -> Int -> IO ()
wolframe from rule = displayLines (getFirstLine from rule initLine) rule
