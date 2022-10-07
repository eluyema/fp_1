module Lab1 where

import Prelude

import Data.List (List(..), (:))

import Effect (Effect)
import Effect.Console (log)

singleton :: forall a. a -> List a
singleton a = a:Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc Nil v = v : Nil
snoc (a : rest) v = a : (snoc rest v )

lenght :: forall a. List a -> Int
lenght Nil = 0
lenght (a:Nil) = 1
lenght (_:a) = lenght(a) +1

test :: Effect Unit
test = do
  log $ show $ singleton (1:(1:(1:Nil)))
  log $ show $ null (1:(1:(1:Nil)))
  log $ show $ null Nil
  log $ show $ snoc (1:(1:(1:Nil))) 1
  log $ show $ snoc Nil 1
  log $ show $ lenght (1:(1:(1:Nil)))
  log $ show $ lenght (1:Nil)
  log $ show $ lenght Nil