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

binToInt :: (Int, Int, Int) -> Int
binToInt (x, y, z) = x * 4 + y * 2 + z

getBit :: Int -> Int -> Int
getBit rule bit = (rule `div` (2 ^ bit)) `mod` 2

applyRule::(Int, Int, Int) -> Int -> Int
applyRule tuple rule = getBit rule $ binToInt tuple
