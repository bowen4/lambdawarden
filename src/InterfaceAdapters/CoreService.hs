{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DeriveGeneric #-}

module InterfaceAdapters.CoreService where

import Domain.Core.Request as Dom (RegisterRequest)

import Data.Text (Text)
import Servant.API
import GHC.Generics (Generic)

type CoreApi = NamedRoutes CoreRoutes 

data CoreRoutes mode = CoreRoutes 
    { accountsRoutes :: mode :- "accounts" :> NamedRoutes AccountsRoutes
    }
    deriving Generic

data AccountsRoutes mode = AccountsRoutes
    { register :: mode :- "register" :> ReqBody '[JSON] RegisterRequest :> Post '[JSON] ()
    }
    deriving Generic
