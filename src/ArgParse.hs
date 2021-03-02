module ArgParse where

data Conf = Conf { rule :: Maybe Int
                 , lines :: Int
                 , start :: Maybe Int
                 , window :: Int
                 , move :: Maybe Int
                 }

defaultConf :: Conf
defaultConf = Conf{ rule = Nothing,
                    lines = 0,
                    start = Nothing,
                    window = 80,
                    move = Nothing
                  }

getOpts :: Conf -> [String] -> Maybe Conf
getOpts conf, [] = Maybe conf
getOpts conf, ["--rule":xs] =
getOpts conf, ["--lines":xs] =
getOpts conf, ["--start":xs] =
getOpts conf, ["--window":xs] =
getOpts conf, ["--move":xs] =
getOpts conf, list = Nothing

someFunc :: IO ()
someFunc = putStrLn "someFunc"
