module Main where

import Test.HUnit
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit (hUnitTestToTests)


main :: IO ()
main = defaultMain []

arithmeticTests = test [
  2 + 15 ~=? 17
  ] 
