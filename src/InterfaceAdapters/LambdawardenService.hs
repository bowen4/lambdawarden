{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DeriveGeneric #-}

module InterfaceAdapters.LambdawardenService where

import InterfaceAdapters.CoreService
import InterfaceAdapters.IdentityService

import Servant.API
import GHC.Generics (Generic)

type LambdawardenService = NamedRoutes LambdawardenRoutes

data LambdawardenRoutes mode = LambdawardenRoutes
    { coreRoutes :: mode :- "api" :> NamedRoutes CoreRoutes
    , identityRoutes :: mode :- "identity" :> NamedRoutes IdentityRoutes
    }
    deriving Generic

