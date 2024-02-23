--
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- TestLib
--

module TestLib (testLib) where

import Test.Hspec
import Lib


testLib :: Spec
testLib = testDefaultarg >> testInitline >> testShowArgs


testDefaultarg :: Spec
testDefaultarg =
    describe "defaultArgs" $
        it "creates default arguments with expected values" $ do
            let args = defaultArgs
            rule args `shouldBe` 0
            start args `shouldBe` 0
            nblines args `shouldBe` (-1)
            window args `shouldBe` 80
            move args `shouldBe` 0

testInitline :: Spec
testInitline =
    describe "initLine" $
        it "initializes the line with expected values" $ do
            let line = initLine
            (take 10 (fst line)) `shouldBe` [0,0,0,0,0,0,0,0,0,0]
            (take 10 (snd line)) `shouldBe` (1:[0,0,0,0,0,0,0,0,0])

testShowArgs :: Spec
testShowArgs = describe "Show instance for Args" $
    it "correctly shows Args with default values" $
        show defaultArgs `shouldBe` "Args {rule = 0, start = 0, nblines = -1, window = 80, move = 0}"
