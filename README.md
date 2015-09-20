# purescript-router

This is a library for routing in the single-page application. It is based on the [Routie](https://github.com/jgallen23/routie) js library.

See details in the [documentation](https://github.com/dbushenko/purescript-router/docs).

Usage example is below.

Html:

    <!doctype>
    <html>
    <body>
      <script src="bower_components/routie/dist/routie.min.js"></script>
        <script src="main.js"></script>
    </body>
    </html>

Purescript:


    module Main where
    
    import Prelude
    import Control.Monad.Eff
    import Control.Monad.Eff.Console
    
    import Routie
    
    index :: forall eff. Eff (r :: ROUTIE, console :: Control.Monad.Eff.Console.CONSOLE | eff) Unit
    index = log "index"
    
    simple :: forall eff. Eff (r :: ROUTIE, console :: Control.Monad.Eff.Console.CONSOLE | eff) Unit
    simple = log "simple"
    
    named :: forall eff. String -> Eff (r :: ROUTIE, console :: Control.Monad.Eff.Console.CONSOLE | eff) Unit
    named name = log name
    
    twoargs :: forall eff. String -> String -> Eff (r :: ROUTIE, console :: Control.Monad.Eff.Console.CONSOLE | eff) Unit
    twoargs verb name = log $ verb ++ ", " ++ name ++ "!"
    
    main = do
      -- Default route
      route0 "/" index

      -- Just simple route without parameters
      route0 "/simple" simple

      -- This route has one parameter -- :name. Also this is named route, its alias is "named"
      route1 "named /named/:name" named

      -- This route is also name and has two parameters
      route2 "two /twoargs/:verb/:name" twoargs

      -- You can lookup a named route supplying its parameters
      named_route <- lookup "named" {name: "Dima"}
      log named_route

      -- You can redirect to the named route supplying parameters.
      -- For simple redirect see function "redirect"
      redirectNamed "two" {verb: "Hello", name: "World"}
      
      return unit
