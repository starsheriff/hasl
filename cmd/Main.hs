module Main where

import TimeLog
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  case args of
    [p, d, msg] -> print $ Log p msg 1
    _ -> putStrLn "error"
