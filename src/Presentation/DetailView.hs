{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeOperators   #-}

module Presentation.DetailView where

import Data.Aeson
import Data.Aeson.TH
import Network.Wai
import Network.Wai.Handler.Warp
import Servant
import Domain.Quotation.Detail
import Domain.Product

detail :: Detail
detail = Detail 1 "PC" 3980 3

data DetailView = DetailView
  {
    productId :: Int,
    productName :: String,
    unitPrice :: Int,
    quantity :: Int,
    price :: Int
  }

detailView :: Detail -> DetailView
detailView (Detail i n u q) = DetailView i n u q price
  where
  price = calcPrice u q


$(deriveJSON defaultOptions ''DetailView)
type CRUD = "detail" :> Get '[JSON] DetailView

crud :: Proxy CRUD
crud = Proxy

detailHandler :: Handler DetailView
detailHandler = return $ detailView detail
