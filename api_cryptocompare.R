#### CryptoCompare API ####


# Install and Load Required R-Packages #
myPkgs <-
  c(
    # Provides access to CoinMarketCap.Com's API
    "coinmarketcapr",
    "jsonlite",
    "data.table"
    )

# Install, Update, & Load Required Packages
installPkgs <- function(packages) {
  new.packages <-
    packages[!(packages %in% installed.packages()[, "Package"])]
  if (length(new.packages))
    install.packages(new.packages, dependencies = TRUE)
  sapply(
    packages,
    require,
    character.only = TRUE,
    warn.conflicts = FALSE,
    quietly = TRUE
  )
}

# Install Packages
suppressPackageStartupMessages(suppressWarnings(suppressMessages(installPkgs(myPkgs))))

# Update Packages
suppressPackageStartupMessages(suppressWarnings(suppressMessages(
  update.packages(ask = FALSE, checkBuilt = TRUE)
)))

# Load & Attach to Global Enviornment Required Packages
lapply(myPkgs, require, character.only = TRUE)



#### Coinmarketcap.com API ####

# Survey & Return Total Market Capitalization in USD
get_global_marketcap('USD')

# Return all cryptocurrency ticker symbols
get_marketcap_ticker_all()

# Plot Top-Five Cryptocurrencies by Market Capitalization
plot_top_5_currencies()


#### CryptoCompare I API ####

# Store API Call response into dataframe 'coinlist'
coinlist = fromJSON("https://www.cryptocompare.com/api/data/coinlist")

# Examine the structure of dataframe 'coinlist' for possible variables to subset
str(coinlist)

#
cryptocompareI = data.table::rbindlist(coinlist$Data, fill = TRUE)

# Create worksheet view of dataframe 'cryptocompareI'
View(cryptocompareI)

# Print output of dataframe 'cryptocompareI
cryptocompareI


#### CryptoCompare II API ####

# Store API call response into dataframe 'cryptocompareII'
cryptocompareII <- fromJSON("https://min-api.cryptocompare.com/")

str(cryptocompareII)
cryptocompareII

# Return list of available API calls
cryptocompareII$AvailableCalls$Price$PriceHistorical

# View API Information
cryptocompareII$Message

#
IOTA <-
  fromJSON(
    "https://min-api.cryptocompare.com/data/histoday?fsym=IOT&tsym=USD&allData=true&e=CCCAGG"
  )
IOTA

# IOTA Data
IOTA$Data

# Call to API for IOTA Price Data
IOTA_Prices <-
  fromJSON(
    "https://min-api.cryptocompare.com/data/pricehistorical?fsym=IOT&tsyms=USD,BTC,ETH,EUR&allData=true&e=CCCAGG")

# Print Current Price of IOTA in USD, BTC, ETH, and EUR
IOTA_Prices
 
