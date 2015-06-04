{-# LANGUAGE OverloadedStrings #-}
module HERMIT.API.Dictionary.Local.Bind where

import HERMIT.API.Types

nonrecToRec :: Rewrite LCore
nonrecToRec = Transform $ method "nonrecToRec" []

recToNonrec :: Rewrite LCore
recToNonrec = Transform $ method "recToNonrec" []
