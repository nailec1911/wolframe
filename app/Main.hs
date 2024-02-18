{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Main
-}

module Main (main) where

import Lib (defaultArgs)
import System.Environment (getArgs)

import ParseArgs (getOpts)
import DisplayLines (wolframe)

main :: IO ()
main = --wolframe $ getOpts defaultArgs . getArgs
    do
    args <- getArgs
    let maybeArg = getOpts defaultArgs args
    case maybeArg of
            Just arg -> wolframe arg
            Nothing -> putStrLn "Invalid arguments, using default args"

    -- print "end"
