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

handleErrors :: Maybe Args -> IO()
handleErrors Nothing
    = putStrLn "Invalid arguments" >> exitWith (ExitFailure 84)
handleErrors (Just arg) = wolfram arg

main :: IO ()
main = getArgs >>= handleErrors . getOpts defaultArgs
