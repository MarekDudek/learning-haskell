module LearningHUnit where

import Test.HUnit

t1 = TestCase(
    assertEqual "one plus two is three" (1+2) 3
  )

tests = TestList [TestLabel "test 1" t1]

tests2 = test [
    "test 2" ~: "1+2 = 3" ~: (1+2) ~=? 3,
    "test 3" ~: "2+3 = 5" ~: (2+3) ~=? 5
  ]
