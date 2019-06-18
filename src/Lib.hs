{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeOperators   #-}
module Lib
    ( startApp
    , app
    ) where

import Data.Aeson
import Data.Aeson.TH
import Network.Wai
import Network.Wai.Handler.Warp
import Servant
import Domain.Employee
import qualified Presentation.EmployeeView as EmployeeView

data User = User
  { userId        :: Int
  , userFirstName :: String
  , userLastName  :: String
  } deriving (Eq, Show)

users :: [User]
users = [ User 1 "Isaac" "Newton"
        , User 2 "Albert" "Einstein"
        ]

$(deriveJSON defaultOptions ''User)

type API = "users" :> Get '[JSON] [User]
         :<|> "users" :> Capture "id" Int :> Get '[JSON] User
         :<|> EmployeeView.CRUD

allUsers :: Handler [User]
allUsers = return users

getUser :: Int -> Handler User
getUser id = return (users !! 0)

startApp :: IO ()
startApp = run 8090 app

app :: Application
app = serve api server

api :: Proxy API
api = Proxy

server :: Server API
server = allUsers
    :<|> getUser
    :<|> EmployeeView.allEmployees

