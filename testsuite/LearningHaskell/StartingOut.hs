module Main where

import Test.HUnit
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit (hUnitTestToTests)


main :: IO ()
main = defaultMain [
    testGroup "Arithmetic"  $ hUnitTestToTests arithmetic,
    testGroup "Logical"     $ hUnitTestToTests logical,
    testGroup "Comparisons" $ hUnitTestToTests comparisons
  ]

arithmetic = test [
    2 + 15       ~=?  17,
    49 * 100     ~=?  4900,
    1892 - 1472  ~=?  420,
    5 / 2        ~=?  2.5
  ] 

logical = test [
    True && False  ~=?  False,
    True || False  ~=?  True,
    not False      ~=?  True
  ]

comparisons = test [
    5 == 5  ~=?  True,
    1 == 0  ~=?  False,
    5 /= 5  ~=?  False,
    5 /= 4  ~=?  True
  ]
