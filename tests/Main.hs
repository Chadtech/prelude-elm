module Main
    ( main
    ) where


import PreludeElm

import Test.Hspec (hspec, shouldBe, SpecWith)
import qualified Test.Hspec as Test


main :: Io ()
main = 
    hspec tests 


tests :: SpecWith ()
tests =
    Test.describe "PreludeElm" <| do
        math


math :: SpecWith ()
math =
    Test.describe "Math" <| do
        Test.specify "+" <| do
            shouldBe (4 :: Int) (2 + 2)

        Test.specify "-" <| do
            shouldBe (1 :: Int) (2 - 1)

        Test.specify "/" <| do
            shouldBe (0.5 :: Float) (1 / 2)

        Test.specify "2 // 2 = 1" <| do
            shouldBe (1 :: Int) (2 // 2)

        Test.specify "5 // 2 = 2" <| do
            shouldBe (2 :: Int) (5 // 2)

        Test.specify "5 * 5 = 25" <| do
            shouldBe (25 :: Int) (5 * 5)

        Test.specify "toFloat" <| do
            shouldBe (5 :: Float) (Int.toFloat (5 :: Int))