module Kata (highAndLow) where

highAndLow :: String -> String
highAndLow input = (show high) ++ " " ++ (show low)
    where numbers = map (read::String->Int) (words input)
          high = maximum numbers
          low = minimum numbers
