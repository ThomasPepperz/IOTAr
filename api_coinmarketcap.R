#### API Access to CoinMarketCap.Com's Cryptocurrency Exchange Market Data ####

# Install and Load Required R-Packages #
myPkgs <-
  c(# Provides functions to streamline the API process
    "coinmarketcapr")

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
