{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}

module UseCases.Register where

import Effectful
import Domain.Core.Request (RegisterRequest)

register :: RegisterRequest -> Eff es () 
register _ = pure ()