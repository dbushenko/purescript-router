module Routie where

import Prelude
import Control.Monad.Eff

foreign import data ROUTIE :: !

type RoutieEff eff = Eff (r :: ROUTIE | eff) Unit
type RoutieEffString eff = Eff (r :: ROUTIE | eff) String

-- | Simple route which accepts path and callback with 0 arguments
foreign import route0 :: forall eff. String -> RoutieEff eff -> RoutieEff eff

-- | Route accepts path and callback with 1 argument
foreign import route1 :: forall eff. String -> (String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 2 arguments
foreign import route2 :: forall eff. String -> (String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 3 arguments
foreign import route3 :: forall eff. String -> (String -> String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 4 arguments
foreign import route4 :: forall eff. String -> (String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 5 arguments
foreign import route5 :: forall eff. String -> (String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 6 arguments
foreign import route6 :: forall eff. String -> (String -> String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 7 arguments
foreign import route7 :: forall eff. String -> (String -> String -> String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Route accepts path and callback with 8 arguments
foreign import route8 :: forall eff. String -> (String -> String -> String -> String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff

-- | Redirects to the specified path
foreign import redirect :: forall eff. String -> RoutieEff eff

-- | Searches for the named route, substitutes parameters and returns generated path
foreign import lookup :: forall obj eff. String -> obj -> RoutieEffString eff

-- | Redirects to the named route with specified parameters
redirectNamed :: forall obj eff. String -> obj -> RoutieEff eff
redirectNamed name properties = do
    named <- lookup name properties
    redirect named
