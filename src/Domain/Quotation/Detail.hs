module Domain.Quotation.Detail where

import Domain.Product

data Detail = Detail
  {
    productId :: Int
    , productName :: String
    , unitPrice :: Int
    , quantity :: Int
  }

getProduct :: Detail -> Product
getProduct (Detail id name unitPrice _) = Product id name unitPrice

getPrice :: Detail -> Int
getPrice (Detail _ _ u q) = calcPrice u q

calcPrice :: Int -> Int -> Int
calcPrice unitPrice quantity = unitPrice * quantity

