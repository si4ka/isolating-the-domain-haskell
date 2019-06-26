{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeOperators   #-}

module Presentation.EmployeeView where

import Data.Aeson
import Data.Aeson.TH
import Network.Wai
import Network.Wai.Handler.Warp
import Servant
import Domain.Employee (Employee(..))

employees :: [Employee]
employees = [ Employee 1 "kenny"
            , Employee 2 "cajun"
            ]


$(deriveJSON defaultOptions ''Employee)
type CRUD = "employees" :> Get '[JSON] [Employee]

crud :: Proxy CRUD
crud = Proxy

allEmployees :: [Employee]
allEmployees = employees

allEmployeesHandler :: Handler [Employee]
allEmployeesHandler = return allEmployees