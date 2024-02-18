{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- displayLines
-}

module DisplayLines
(
    convertLine,
    displayFrame,
    displayLines,
    wolfram,
) where


import ComputeLines (getFirstLine, computeLine, moveLine)
import Lib (Line, initLine, Args(..))
-- import ParseArgs

convertLine :: [Int] -> String
convertLine (1:endlist) = '*' : convertLine endlist
convertLine (_:endlist) = ' ' : convertLine endlist
convertLine _ = " "

displayFrame :: Int -> Line -> IO()
displayFrame size (_,line) = putStrLn $ take size $ convertLine line

displayLines :: Line -> Args -> IO ()
displayLines _ (Args {nblines = 0}) = return ()
displayLines line args =
        displayFrame (window args) (moveLine (move args + 40) line)
        >> displayLines (computeLine (rule args) line)
                        args{nblines = nblines args - 1}

wolfram :: Args -> IO ()
wolfram args
    = displayLines (getFirstLine (start args) (rule args) initLine) args
