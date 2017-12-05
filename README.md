# IOTAr
IOTAr: A Package for the R Statistical Programming Language

## Introduction
'IOTAr' (pronounced eye-OAT-tah-ARE) introduces a suite of IOTA-specific functions into the R Statistical Programming Language's (R) package vocabulary. 

## Installation
require(devtools)
install_github('ThomasPepperz/IOTAr')

## IOTA Market Data
There are currently three categories of datafiles available: 

1.) Raw trade data obtained from cryptocurrency exchanges.
2.) Open-High-Low-Close (OHLC) compiled from cryptocurrency exchange-specific trade data
3.) 

### Raw, Timestamped Trade Data Collected from Cryptocurrency Exchanges (*) (**)
    a.) Bitfinex lists IOT/USD IOT/BTC trade pairs on Monday, June 12, 2017 (UNC)
    b.) Bitfinex lists IOT/BTC trade pair on Monday, June 12, 2017 (UNC)
    c.) Bitfinex lists IOT/ETH trade pair on Wednesday, June 28, 2017 (UNC)
    d.) Bitfinex to list IOT/EUR someday between Monday, November 27, 2017 & Friday, December 1, 2017 (UNC)
    e.) Binance lists IOTA/BTC IOTA/ETH trade pair on Thursday, September 28, 2017
    f.) Binance lists IOTA/ETH trade pair on Thursday, September 28, 2017
    g.) CoinFalcon.com (UK) listsIOTA/BTC, November 2017
    h.) OKEx (Hong Kong) lists IOT/BTC, November 20, 2017
    i.) CoinSpot.au (Austrailia) lists IOT/AUD on Sunday, June 25, 2017
    
    (*) Bitfinex.com includes variables "Timestamp," "TradeId," "Price," and "Amount" for trading pairs IOT/USD, IOT/BTC,         
        IOT/ETH 
## Bitfinex (IOT/USD, IOT/BTC, IOT/ETH)
Bitfinex listed IOT/USD and IOT/BTC trading pairs Monday, June, 12, 2017 (UNC). On Wednesday, June 28, 2017 (UNC), Bitfinex further listed IOTA with Ether as IOT/ETH. 

## Binance (IOT/BTC, IOT/ETH)

## CoinFalcon.com (IOTA/BTC)

## OKEx (Hong Kong | IOT/BTC)

## CoinSpot.au


## CoinMarketCap.com
A dataset built-in to the package featuring Open-High-Low-Close (OHLC) and aggregated from Cryptocurrency Market Indices (CMIs), exchanges, & data agregators. Includes the following variables: {"Date" (%m%d%y), "Open", "High", "Low", "Close","Volume", and "Market Cap"}

## CryptoCompare.com
A dataset built-in to the package featuring Open-High-Low-Close (OHLC) and aggregated from Cryptocurrency Market Indices (CMIs), exchanges, & data agregators. Includes the following variables: {"Date" (%m%d%y), "Open", "High", "Low", "Close","Volume", and "Market Cap"}

Note_1: All of the data are formatted inside files as comma-separated values.
Note_2: Naming Convention = "trades_IOTXXX_wk#" | Ex. "trades_IOTBTC_wk21" Social Media-Related data Collected from Cryptocurrency Market & Data Aggregators

    
## IOTAr Functionality





