module Codewars.Kata.Dubstep where

import qualified Data.Text as T

songDecoder :: String -> String
songDecoder wubbed = T.unpack $ T.unwords $ T.words unwubbed
    where unwubbed = T.replace (T.pack "WUB") (T.pack " ") (T.pack wubbed)
