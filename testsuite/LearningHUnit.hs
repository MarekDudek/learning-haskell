module LearningHUnit where

import Test.HUnit

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit (hUnitTestToTests)


addition :: Test
addition = TestCase(
    assertEqual "one plus two is three"  3  (1+2)
  )

multiplication :: Test
multiplication = TestCase(
    assertEqual "two times two is four"  4  (2*2) 
  )

verboseTests :: Test
verboseTests = TestList [TestLabel "Addition" addition, TestLabel "Multiplication" multiplication]


succintTests :: Test
succintTests = test [
    "Addition"       ~: "1 + 2 = 3" ~: 3 ~=? (1+2),
    "Multiplication" ~: "2 * 2 = 4" ~: 4 ~=? (2*2)
  ]



main :: IO ()
main = defaultMain tests

tests = [ 
    testGroup "Verbose tests" $ hUnitTestToTests verboseTests,
    testGroup "Succint tests" $ hUnitTestToTests succintTests 
  ]
