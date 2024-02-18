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

import Text.Read
import Data.Maybe
import Lib (Args(..))

getArg::String -> Int
getArg arg = fromMaybe (error "Invalid argument: Not a number") $ readMaybe arg

checkArgs::Args -> Maybe Args
checkArgs args
    | rule args >= 0
        && rule args <= 255
        && start args >= 0
        && nblines args >= -1
        && window args >= 0
            = Just args
    | otherwise = Nothing

getOpts::Args -> [String] -> Maybe Args
getOpts args ("--rule":val:agx) = getOpts args{rule = getArg val} agx
getOpts args ("--start":val:agx) = getOpts args{start = getArg val} agx
getOpts args ("--lines":val:agx) = getOpts args{nblines = getArg val} agx
getOpts args ("--window":val:agx) = getOpts args{window = getArg val} agx
getOpts args ("--move":val:agx) = getOpts args{move = getArg val} agx
getOpts args [] = checkArgs args
getOpts _ _ = Nothing
