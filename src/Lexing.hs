module Lexing where

import DataTypes

tokenize :: [String] -> [TOKEN]
tokenize [] = []
tokenize ("--rule":xs)   = RULE : tokenize xs
tokenize ("--lines":xs)  = LINES : tokenize xs
tokenize ("--start":xs)  = START : tokenize xs
tokenize ("--window":xs) = WINDOW : tokenize xs
tokenize ("--move":xs)   = MOVE : tokenize xs
tokenize (x:xs) = Value x : tokenize xs
