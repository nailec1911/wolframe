{-
-- EPITECH PROJECT, 2024
-- B-FUN-400-BDX-4-1-wolfram-celian.lombardot
-- File description:
-- ParseArgs
-}

module ParseArgs
(
    getOpts,
) where

import Lib (Args(..))
import Text.Read (readMaybe)
import Data.Maybe (isNothing)

getInt :: String -> Int
getInt = read

checkArgs :: Args -> Maybe Args
checkArgs args
    | rule args >= 0
        && rule args <= 255
        && start args >= 0
        && nblines args >= -1
        && window args >= 0
            = Just args
    | otherwise = Nothing

isNumber :: String -> Bool
isNumber str    | isNothing (readMaybe str::Maybe Int) = False
                | otherwise = True

getOpts :: Args -> [String] -> Maybe Args
getOpts args ("--rule":val:agx) | isNumber val
                                = getOpts args{rule = getInt val} agx
                                | otherwise = Nothing
getOpts args ("--start":val:agx)    | isNumber val
                                    = getOpts args{start = getInt val} agx
                                    | otherwise = Nothing
getOpts args ("--lines":val:agx)    | isNumber val
                                    = getOpts args{nblines = getInt val} agx
                                    | otherwise = Nothing
getOpts args ("--window":val:agx)   | isNumber val
                                    = getOpts args{window = getInt val} agx
                                    | otherwise = Nothing
getOpts args ("--move":val:agx) | isNumber val
                                = getOpts args{move = getInt val} agx
                                | otherwise = Nothing
getOpts args [] = checkArgs args
getOpts _ _ = Nothing
