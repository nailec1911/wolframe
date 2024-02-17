{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Rule
-}

module Rules
(
    applyRule,
    Rule,
) where

type Rule = Int

binToInt :: (Int, Int, Int) -> Int
binToInt (x, y, z) = x * 4 + y * 2 + z

getBit :: Rule -> Int -> Int
getBit rule bit = (rule `div` (2 ^ bit)) `mod` 2

applyRule::Rule -> (Int, Int, Int) -> Int
applyRule rule tuple = getBit rule $ binToInt tuple
