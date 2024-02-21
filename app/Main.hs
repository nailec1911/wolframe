{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Main
-}

module Main (main) where

import System.Environment (getArgs)
import System.Exit (exitWith, ExitCode(..))

import Lib (defaultArgs, Args(..))
import ParseArgs (getOpts)
import DisplayLines (wolfram)

usage :: String
usage = "USAGE:\n\n" ++
        "./wolfram --rule value [--start value] [--lines value]" ++
        " [--window value] [--move value]\n\n" ++
        "--rule    ->   select the rule to apply\n" ++
        "--start   ->   the first line of the generation to display\n" ++
        "--lines   ->   the number of lines to display\n" ++
        "--window  ->   the size of the display window\n" ++
        "--move    ->   translation to apply to the window " ++
        "(right if positive, left if negative)"


handleErrors :: Maybe Args -> IO()
handleErrors Nothing
    = putStrLn usage >> exitWith (ExitFailure 84)
handleErrors (Just arg) = wolfram arg

main :: IO ()
main = getArgs >>= handleErrors . getOpts defaultArgs
