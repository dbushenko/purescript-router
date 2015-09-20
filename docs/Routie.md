## Module Routie

#### `ROUTIE`

``` purescript
data ROUTIE :: !
```

#### `RoutieEff`

``` purescript
type RoutieEff eff = Eff (r :: ROUTIE | eff) Unit
```

#### `RoutieEffString`

``` purescript
type RoutieEffString eff = Eff (r :: ROUTIE | eff) String
```

#### `route0`

``` purescript
route0 :: forall eff. String -> RoutieEff eff -> RoutieEff eff
```

Simple route which accepts path and callback with 0 arguments

#### `route1`

``` purescript
route1 :: forall eff. String -> (String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 1 argument

#### `route2`

``` purescript
route2 :: forall eff. String -> (String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 2 arguments

#### `route3`

``` purescript
route3 :: forall eff. String -> (String -> String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 3 arguments

#### `route4`

``` purescript
route4 :: forall eff. String -> (String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 4 arguments

#### `route5`

``` purescript
route5 :: forall eff. String -> (String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 5 arguments

#### `route6`

``` purescript
route6 :: forall eff. String -> (String -> String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 6 arguments

#### `route7`

``` purescript
route7 :: forall eff. String -> (String -> String -> String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 7 arguments

#### `route8`

``` purescript
route8 :: forall eff. String -> (String -> String -> String -> String -> String -> String -> String -> RoutieEff eff) -> RoutieEff eff
```

Route accepts path and callback with 8 arguments

#### `redirect`

``` purescript
redirect :: forall eff. String -> RoutieEff eff
```

Redirects to the specified path

#### `lookup`

``` purescript
lookup :: forall obj eff. String -> obj -> RoutieEffString eff
```

Searches for the named route, substitutes parameters and returns generated path

#### `redirectNamed`

``` purescript
redirectNamed :: forall obj eff. String -> obj -> RoutieEff eff
```

Redirects to the named route with specified parameters


