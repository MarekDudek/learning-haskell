module LearningHUnit where

import Test.HUnit

import Test.Framework --(defaultMain)
import Test.Framework.Providers.HUnit

--addition :: Test
addition = TestCase(
    assertEqual "one plus two is three" (1+2) 3
  )

--multiplication :: Test
multiplication = TestCase(
    assertEqual "two times two is four" (2*2) 4
  )

--verboseTests :: Test
verboseTests = TestList [TestLabel "Addition" addition, TestLabel "Multiplication" multiplication]


--succintTests :: Test
succintTests = test [
    "Addition" ~: "1+2 = 3" ~: (1+2) ~=? 3,
    "Multiplication" ~: "2+3 = 5" ~: (2+3) ~=? 5
  ]


main :: IO ()
main = defaultMain tests

tests = [ 
    testGroup "Verbose tests" $ hUnitTestToTests verboseTests,
    testGroup "Succint tests" $ hUnitTestToTests succintTests 
  ]
