module BadArgs where

import System.Exit
import Control.Exception
import System.Environment

data BadArgs = BadArgs deriving Show
instance Exception BadArgs

excHandler :: BadArgs -> IO()
excHandler _ = exitWith $ ExitFailure 84

