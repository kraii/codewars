module Codewars.Kata.FindOdd where

import Data.List
import qualified Data.Maybe as M

-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
findOdd :: [Int] -> Int
findOdd xs = head $ M.fromJust $ find (odd . length) grouped 
    where grouped = group $ sort xs
