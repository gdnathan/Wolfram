module Wolfgram where

import BadArgs
import Control.Exception
import System.Environment

type BeforeWindow = [Char]
type Window = [Char]
type AfterWindow = [Char]
data WolfgramLine = WolfgramLine BeforeWindow Window AfterWindow

data Wolfgram a = Wolfgram [WolfgramLine]

type Rule a = a -> a -> a -> a
-- 111 -> 0
-- 110 -> 0

-- map :: (a -> b) -> [a] -> [b]

-- ruleNumberToRule :: Int -> Rule char
-- ruleNumberToRule 30 = rule30
-- ruleNumberToRule 90 = rule90
-- ruleNumberToRule 110 = rule110
-- ruleNumberToRule _ = throw BadArgs

rule110 :: Int -> Int -> Int -> Int
rule110 1 1 1 = 0
rule110 1 1 0 = 0
