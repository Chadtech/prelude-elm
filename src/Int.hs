module Int 
    ( toFloat
    , toDouble
    ) where

import qualified Prelude as P
import Prelude 
    ( Float
    , Double
    , Integral
    )



toDouble :: (Integral int) => int -> Double
toDouble =
    P.fromIntegral

toFloat :: (Integral int) => int -> Float
toFloat =
    P.fromIntegral
