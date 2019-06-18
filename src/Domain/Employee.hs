module Domain.Employee where

import qualified Data.Text as Text

data Employee = Employee
  {
    number :: Int
    , name :: String
  } deriving (Show)

