--
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- TestDisplayLines
--

module TestDisplayLines (testDisplay) where

import Test.Hspec
import DisplayLines
import Lib


testDisplay :: Spec
testDisplay = testConvertLine


testConvertLine :: Spec
testConvertLine = describe "convertLine function" $
    it "converts a line with 1s to '*' characters"
        (convertLine [1, 1, 1] `shouldBe` "*** ") >>
    it "converts a line with 0s to ' ' characters"
        (convertLine [0, 0, 0] `shouldBe` "    ") >>
    it "converts a mixed line correctly"
        (convertLine [1, 0, 1, 0, 1] `shouldBe` "* * * ")

-- testDisplayFrame :: Spec
-- testDisplayFrame = describe "displayFrame function" $
    -- it "displays the line correctly with size 5"
        -- (displayFrame 5 ([0, 1, 0, 1, 0], [1, 0, 1, 0, 1]) `shouldBe` putStrLn " * * *") >>
    -- it "displays the line correctly with size 3"
        -- (displayFrame 3 ([1, 0, 1], [0, 1, 0]) `shouldBe` putStrLn "* *")
