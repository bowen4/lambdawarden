module Domain.Core.Request where

import Data.Text (Text)

data RegisterRequest = RegisterRequest
  { name :: Maybe Text
  , email :: Text
  , masterPasswordHash :: Text
  , masterPasswordHint :: Maybe Text
  , captchaResponse :: Text
  , key :: Maybe Text
  , token :: Maybe Text
  , organizationUserId :: ()
  , kdf :: Maybe Kdf
  , kdfIterations :: Maybe Int
  , kdfMemory :: Maybe Int
  , kdfParallelism :: Maybe Int
  , referenceData :: ()
  }

data KeysRequest = KeysRequest
    { publicKey :: Text
    , encryptedPrivateKey :: Text
    }

data Kdf = PBKDF2_SHA256 | Argon2id