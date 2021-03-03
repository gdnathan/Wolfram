module DataTypes where

data TOKEN = RULE | LINES | START | WINDOW | MOVE | Value String

-- newtype RuleNumber = RuleNumber Int deriving (Eq)
-- newtype Lines = Lines Int deriving (Eq)
-- newtype Start = Start Int deriving (Eq)
-- newtype Window = Window Int deriving (Eq)
-- newtype Move = Move Int deriving (Eq)

type RuleNumber = Int
type Lines = Int
type Start = Int
type Window = Int
type Move = Int

data Conf = Conf RuleNumber Lines Start Window Move deriving (Show)

defaultConf :: Conf
defaultConf = Conf (-1) 0 (-1) 80 0

