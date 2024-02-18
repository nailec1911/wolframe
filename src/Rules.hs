{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Rule
-}

module Rules
(
    applyRule,
) where

import Lib

binToInt :: (Int, Int, Int) -> Int
binToInt (x, y, z) = x * 4 + y * 2 + z

getBit :: Rule -> Int -> Int
getBit conv bit = (conv `div` (2 ^ bit)) `mod` 2

applyRule :: Rule -> (Int, Int, Int) -> Int
applyRule conv tuple = getBit conv $ binToInt tuple
