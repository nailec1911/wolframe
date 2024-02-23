--
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- TestCompute
--

module TestCompute (testCompute) where

import Test.Hspec
import ComputeLines

testCompute :: Spec
testCompute = testComputeListR >> testComputeListL >> testComputeLine >> testMoveLine >> testGetFirstLine

testComputeListR :: Spec
testComputeListR = describe "computeListR function" $
    it "computes the list correctly for rule 30"
        (computeListR 30 [0, 1, 0, 0, 1, 0, 1, 0] `shouldBe` [1, 1, 1, 1, 0, 1]) >>
    it "computes the list correctly for rule 110"
        (computeListR 110 [1, 1, 0, 1, 1, 1, 1, 0] `shouldBe` [1, 1, 1, 0, 0, 1])

testComputeListL :: Spec
testComputeListL = describe "computeListL function" $
    it "computes the list correctly for rule 30"
        (computeListL 30 [0, 1, 0, 0, 1, 0, 1, 0] `shouldBe` [1, 1, 1, 1, 0, 1]) >>
    it "computes the list correctly for rule 110"
        (computeListL 110 [1, 1, 0, 1, 1, 1, 1, 0] `shouldBe` [1, 1, 1, 0, 0, 1])

testComputeLine :: Spec
testComputeLine = describe "computeLine function" $
    it "computes the line correctly for rule 30"
        (computeLine 30 ([0, 0, 0, 1, 0], [0, 0, 0, 0, 0]) `shouldBe` ([0,0,1,1],[0,0,0,0])) >>
    it "computes the line correctly for rule 110"
        (computeLine 110 ([1, 0, 1, 0, 1], [0, 1, 0, 1, 0]) `shouldBe` ([1,1,1,1],[1,1,1,1]))

testMoveLine :: Spec
testMoveLine = describe "moveLine function" $
    it "moves an empty line"
        (moveLine 3 ([0, 1, 0], []) `shouldBe` ([0,1,0], [])) >>
    it "moves the line correctly to the right"
        (moveLine 3 ([0, 1, 0], [1, 0, 1]) `shouldBe` ([],[0,1,0,1,0,1])) >>
    it "moves the line correctly to the left"
        (moveLine (-2) ([0, 1, 0], [1, 0, 1]) `shouldBe` ([0,1,0,1,0],[1]))

testGetFirstLine :: Spec
testGetFirstLine = describe "getFirstLine function" $
    it "computes the first line correctly for rule 30"
        (getFirstLine 2 30 ([0, 1, 0], [1, 0, 1]) `shouldBe` ([0], [1])) >>
    it "computes the first line correctly for rule 110"
        (getFirstLine 3 110 ([0, 1, 0], [1, 0, 1]) `shouldBe` ([0], [0])) >>
    it "computes the first line correctly for rule 90"
        (getFirstLine 1 90 ([0, 1, 0], [1, 0, 1]) `shouldBe` ([0, 0], [0, 0]))
