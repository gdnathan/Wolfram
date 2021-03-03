module Parsing where

import DataTypes
import Control.Exception
import System.Environment
import BadArgs

-- data TOKEN = RULE | LINES | START | WINDOW | MOVE | Value string
-- data Conf = Conf (Maybe RuleNumber) Lines (Maybe Start) Window (Maybe Move)

setRule :: Conf -> RuleNumber -> Conf
setRule (Conf a b c d e) new = Conf new b c d e

setLines :: Conf -> Lines -> Conf
setLines (Conf a b c d e) new = Conf a new c d e

setStart :: Conf -> Start -> Conf
setStart (Conf a b c d e) new = Conf a b new d e

setWindow :: Conf -> Window -> Conf
setWindow (Conf a b c d e) new = Conf a b c new e

setMove :: Conf -> Move -> Conf
setMove (Conf a b c d e) new = Conf a b c d new

checkParse :: Conf -> Conf
checkParse (Conf (-1) _ _ _ _) = throw BadArgs
checkParse conf = conf

parsing :: [TOKEN] -> Conf -> Conf
parsing [] c = checkParse c
parsing (LINES : Value v : xs) c = parsing xs $ setLines c (read v :: Int)
parsing (RULE : Value v : xs) c = parsing xs $ setRule c (read v :: Int)
parsing (START : Value v : xs) c = parsing xs $ setStart c (read v :: Int)
parsing (WINDOW : Value v : xs) c = parsing xs $ setWindow c (read v :: Int)
parsing (MOVE : Value v : xs) c = parsing xs $ setMove c (read v :: Int)
parsing _ _ = throw BadArgs

