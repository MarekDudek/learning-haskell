module Main where

import Test.HUnit
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit (hUnitTestToTests)


main :: IO ()
main = defaultMain [
    testGroup "Arithmetic"  $ hUnitTestToTests arithmetic,
    testGroup "Logical"     $ hUnitTestToTests logical,
    testGroup "Comparisons" $ hUnitTestToTests comparisons,
    testGroup "Enumeration" $ hUnitTestToTests enumeration,
    testGroup "Ordering"    $ hUnitTestToTests ordering 
  ]

arithmetic = test [
    2 + 15       ~=?  17,
    49 * 100     ~=?  4900,
    1892 - 1472  ~=?  420,
    5 / 2        ~=?  2.5,
    5            ~=?  5.0,
    5 `div` 2    ~=?  2
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
    5 /= 4  ~=?  True,
    5 >  5  ~=?  False,
    5 >= 4  ~=?  True,
    6 <  6  ~=?  False,
    6 <= 6  ~=?  True    
  ]

enumeration = test [
    succ 8  ~=?  9,
    pred 8  ~=?  7
  ]

ordering = test [
    min 9 10     ~=?  9,
    max 100 101  ~=?  101
  ]
