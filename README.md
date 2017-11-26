# IOTAr
IOTAr: A Package for the R Statistical Programming Language

## Datafiles
There are currently three categories of datafiles available:

1.) Raw, Timestamped Trade Data Collected from Cryptocurrency Exchanges (*) (**)
 
    a.) Bitfinex lists IOT/USD IOT/BTC trade pairs on Monday, June 12, 2017 (UNC)
    b.) Bitfinex lists IOT/BTC trade pair on Monday, June 12, 2017 (UNC)
    c.) Bitfinex lists IOT/ETH trade pair on Wednesday, June 28, 2017 (UNC)
    d.) Bitfinex to list IOT/EUR someday between Monday, November 27, 2017 & Friday, December 1, 2017 (UNC)
    
    e.) Binance listsIOTA/BTC IOTA/ETH trade pair on Thursday, September 28, 2017
    f.) Binance lists IOTA/ETH trade pair on Thursday, September 28, 2017
    
    g.) CoinFalcon.com (UK) listsIOTA/BTC, November 2017
    
    h.) OKEx (Hong Kong) lists IOT/BTC, November 20, 2017
    
    i.) CoinSpot.au (Austrailia) lists IOT/AUD on Sunday, June 25, 2017
    
    (*) Bitfinex.com includes variables "Timestamp," "TradeId," "Price," and "Amount" for trading pairs IOT/USD, IOT/BTC,         
        IOT/ETH 


2.) Open-High-Low-Close (OHLC) Collected from Cryptocurrency Market Indices, Exchanges, & Data Aggregators

    CoinMarketCap.com with variables "Date" (%m%d%y), "Open", "High", "Low", "Close",        
    "Volume", and "Market Cap"

3.) Social Media-Related data Collected from Cryptocurrency Market & Data Aggregators

    a.) CoinMarketCap.com
    b.) CryptoCompare.com

    (*) All of the data are formatted inside files as comma-separated values
    (**) Naming Convention = "trades_IOTXXX_wk#" | Ex. "trades_IOTBTC_wk21"
    
### IOTAr Functionality

'IOTAr' (pronounced eye-OAT-tah-ARE) introduces a suite of IOTA-specific functions into the R Statistical Programming Language's (R) package vocabulary. 
