{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DeriveGeneric #-}

module InterfaceAdapters.IdentityService where


import Servant.API ( NamedRoutes )
import GHC.Generics (Generic)

type IdentityApi = NamedRoutes IdentityRoutes

data IdentityRoutes mode = IdentityRoutes
    { 

    }
    deriving Generic