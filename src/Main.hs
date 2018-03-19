{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text as T
import Text.Pandoc

main :: IO ()
main = do
  let content = T.unlines ["{{-sin-}}", "*[[azzurrognolo]]"]
  print (runPure (readMediaWiki def content))
