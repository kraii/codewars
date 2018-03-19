{-# LANGUAGE ViewPatterns #-}
module Haskell.Codewars.CreditCardIssuer where
import Data.List
getIssuer :: Int -> String
getIssuer n = ish (show n)
    where ish (stripPrefix "34" -> Just _) = "AMEX"
          ish (stripPrefix "37" -> Just _) = "AMEX"
          ish (stripPrefix "6011" -> Just _) = "Discover"
          ish (stripPrefix "51" -> Just _) = "Mastercard"
          ish (stripPrefix "52" -> Just _) = "Mastercard"
          ish (stripPrefix "53" -> Just _) = "Mastercard"
          ish (stripPrefix "54" -> Just _) = "Mastercard"
          ish (stripPrefix "55" -> Just _) = "Mastercard"
          ish (stripPrefix "4" -> Just _) = "VISA"
          ish s = "Unknown"
