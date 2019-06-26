module Domain.Product where

data Product = Product
  {
    id :: Int
    , name :: String
    , unitPrice :: Int
  } deriving Show