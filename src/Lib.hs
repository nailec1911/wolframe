{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Lib
-}

module Lib
(
    Args (..),
    defaultArgs,
    Line,
    initLine,
    Rule,
) where

data Args = Args {rule::Int, start::Int, nblines::Int, window::Int, move::Int}
    deriving(Show)
type Line = ([Int], [Int])
type Rule = Int

defaultArgs::Args
defaultArgs = Args{rule = 0, start = 0, nblines= -1, window= 80, move= 0}

infZero:: [Int]
infZero = repeat 0

initLine::Line
initLine = (infZero, 1 : infZero)
