module PreludeElm 
    ( (|>)
    , (<|)
    , (+)
    , (-)
    , (/)
    , (//)
    , (*)
    , (^)
    , (^^)
    , (**)
    , Int
    , Float
    , Io
    , Num
    , Integral
    , Fractional
    , module Int
    ) where


import qualified Prelude as P
import Prelude 
    ( Int
    , Float
    , (+)
    , (-)
    , (/)
    , (*)
    , (^)
    , (^^)
    , (**)
    , Integral
    , Fractional
    , Num
    )
import qualified Int

type Io = P.IO


-------------------------------------------------------------------------------
-- MATH --
-------------------------------------------------------------------------------


(//) :: (Integral int) => int -> int -> int
x // y =
    P.div x y



-------------------------------------------------------------------------------
-- INFIX --
-------------------------------------------------------------------------------

infixl 0 |>
(|>) :: a -> (a -> b) -> b
x |> f = 
    apply x f


infixr 0 <|
(<|) :: (a -> b) -> a -> b
f <| x = 
    apply x f


apply :: a -> (a -> b) -> b
apply x f = 
    f x