module Main where

import DataTypes
import Lexing
import Parsing
import Wolfgram
import BadArgs
import System.Environment
import System.Exit
import Control.Exception

main :: IO ()
main = catch (getArgs >>= argsInit) excHandler

argsInit :: [String] -> IO ()
argsInit args = printConf $ parsing (tokenize args) defaultConf

printConf :: Conf -> IO ()
printConf conf = print conf
