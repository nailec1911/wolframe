--
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Main
--

module Main (main) where

import Lib
import System.Environment (getArgs)

import ParseArgs (defaultArgs, getOpts)

main :: IO ()
main = do
    args <- getArgs
    let c = getOpts defaultArgs args
    print "end"
