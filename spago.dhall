{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "matrix"
, dependencies =
  [ "arrays", "assert", "console", "effect", "proxy", "psci-support", "random", "vector" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
