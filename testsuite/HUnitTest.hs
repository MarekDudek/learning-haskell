module Main where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

main = defaultMain tests

tests = [
    testGroup "group 1" [
      testCase "test 1" (
        assertEqual "" (1+2) 3
      )
    ]
  ]
