--
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- Spec
--

module Main (main) where

import Test.Hspec (hspec)
import TestRules (testRules)
import TestLib (testLib)
import TestDisplayLines (testDisplay)
import TestCompute (testCompute)

main :: IO ()
main = hspec $ testRules >> testLib >> testDisplay >> testCompute
