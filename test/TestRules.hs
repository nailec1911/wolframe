--
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- TestRules
--


module TestRules (testRules) where

import Rules (applyRule)
import Test.Hspec


testRules :: Spec
testRules =
  describe "Rules test" $
        it "returns 0 for rule 0 and input (0, 0, 0)"
            (applyRule 0 (0, 0, 0) `shouldBe` 0) >>

        it "returns 0 for rule 0 and input (0, 0, 1)"
            (applyRule 0 (0, 0, 1) `shouldBe` 0) >>

        it "returns 1 for rule 1 and input (0, 0, 0)"
            (applyRule 1 (0, 0, 0) `shouldBe` 1) >>

        it "returns 0 for rule 110 and input (1, 0, 0)"
            (applyRule 110 (1, 0, 0) `shouldBe` 0) >>

        it "returns 0 for rule 110 and input (1, 1, 1)"
            (applyRule 110 (1, 1, 1) `shouldBe` 0) >>

        it "returns 1 for rule 110 and input (0, 1, 0)"
            (applyRule 110 (0, 1, 0) `shouldBe` 1)
