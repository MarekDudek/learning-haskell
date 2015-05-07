module Main where


import Test.HUnit
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit (hUnitTestToTests)

import LearningHaskell.StartingOut


main :: IO ()
main = defaultMain [
    testGroup "Numbers"              $ hUnitTestToTests numbers,
    testGroup "Arithmetic"           $ hUnitTestToTests arithmetic,
    testGroup "Logical"              $ hUnitTestToTests logical,
    testGroup "Equality"             $ hUnitTestToTests equality,
    testGroup "Comparison"           $ hUnitTestToTests comparison,
    testGroup "Conditional"          $ hUnitTestToTests conditional,
    testGroup "Enumeration"          $ hUnitTestToTests enumeration,
    testGroup "Ordering"             $ hUnitTestToTests ordering,
    testGroup "Functions"            $ hUnitTestToTests functions,
    testGroup "Creating lists"       $ hUnitTestToTests creatingLists,
    testGroup "Accessing lists"      $ hUnitTestToTests accessingLists,
    testGroup "Selecting from lists" $ hUnitTestToTests selectingFromList,
    testGroup "Processing lists"     $ hUnitTestToTests processingLists 
  ]

-- Ready, set, go!

numbers = test [
    5  ~=?  5.0
  ]

arithmetic = test [
    2 + 15       ~=?  17,
    1892 - 1472  ~=?  420,
    49 * 100     ~=?  4900,
    5 / 2        ~=?  2.5,
    5 `div` 2    ~=?  2
  ] 

logical = test [
    True && False  ~=?  False,
    True || False  ~=?  True,
    not False      ~=?  True
  ]

equality = test [
    5 == 5  ~=?  True,
    1 == 0  ~=?  False,
    5 /= 5  ~=?  False,
    5 /= 4  ~=?  True
  ]

comparison = test [
    5 >  5  ~=?  False,
    5 >= 4  ~=?  True,
    6 <  6  ~=?  False,
    6 <= 6  ~=?  True    
  ]

conditional = test [
    (if True then 2 else 3)  ~=?  2
  ]

enumeration = test [
    succ 8  ~=?  9,
    pred 8  ~=?  7
  ]

ordering = test [
    min 9 10     ~=?  9,
    max 100 101  ~=?  101
  ]

-- Baby's first functions

functions = test [
    doubleMe 3    ~=?  6,
    doubleUs 2 3  ~=?  10
  ]

-- An intro to lists

creatingLists = test [
    [1, 2, 4, 7]  ~=?  1:2:4:7:[],
    1:[2, 4, 7]   ~=?  [1, 2] ++ [4, 7],
    "hello"       ~=?  'h':"ello"
  ]

accessingLists = test [
    [2, 4, 7] !! 0      ~=?  2,
    length [2, 4, 7]    ~=?  3,
    null [2, 4, 7]      ~=?  False,
    4 `elem` [2, 4, 7]  ~=?  True
  ]

selectingFromList = test [
    head [2, 4, 7]    ~=?  2,
    tail [2, 4, 7]    ~=?  [4, 7],
    init [2, 4, 7]    ~=?  [2, 4],
    last [2, 4, 7]    ~=?  7,
    take 1 [1, 2, 4]  ~=?  [1],
    take 4 [1, 2, 4]  ~=?  [1, 2, 4],
    drop 2 [1, 2, 4]  ~=?  [4],
    drop 4 [1, 2, 4]  ~=?  []
  ]

processingLists = test [
    minimum [1, 2, 4, 7]  ~=?  1,
    maximum [1, 2, 4, 7]  ~=?  7,
    sum [1, 2, 3, 4]      ~=?  10, 
    product [1, 2, 3, 4]  ~=?  24,
    reverse [1, 2, 3, 4]  ~=?  [4, 3, 2, 1] 
  ]
