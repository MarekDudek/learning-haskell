module Main where

import Test.QuickCheck

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck (testProperty)

import Data.List


main :: IO ()
main = defaultMain tests


tests = [
    testGroup "some group" [
      testProperty "after sort minimum is first" min_first,
      testProperty "after sort maximum is last"  max_last
    ]
  ]

min_first xs = 
  (not (null xs)) ==>
  (head (sort xs) == minimum xs)
  where
    types = (xs :: [Int])

max_last xs = 
  (not (null xs)) ==>
  (last (sort xs) == maximum xs)
  where
    types = (xs :: [Int])
