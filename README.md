# Prelude Elm

My opinion is that the Haskell prelude is not that good. I think a lot of people agree. Fewer people- but still some- would agree with me, that functions like `fmap` and typeclasses like `Functor` are not that good. I would like an Elm-like experience in Haskell, with tokens like `Maybe.map` and `Io.andThen`.

So I set out to remake `elm/core` in Haskell.

But it turns out you cannot re-export modules in Haskell.
```haskell
-- Maybe.hs
module Maybe
    ( map
    ) where

-- PreludeElm.hs
module PreludeElm 
    ( module Maybe
    )
    where

import qualified Maybe

-- Main.hs

import PreludeElm


    Maybe.map
    -- ^ Error! `Maybe` doesnt exist in this namespace
```

Having to manually import all these things in Haskell where they are implicitly imported in Elm is a bit of a bummer. So I am giving up on this project for now.


