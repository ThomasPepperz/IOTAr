###########################################################################################################################################################################################################################
###########################################################################################################################################################################################################################
###########################################################################################################################################################################################################################
##########################################################          'iota' R-Package           ############################################################################################################################
##########################################################             Developed by            ############################################################################################################################
##########################################################           Thomas A. Pepperz         ############################################################################################################################
##########################################################    The Leeds School of Business at  ############################################################################################################################
##########################################################    University of Colorado, Boulder  ############################################################################################################################
###########################################################################################################################################################################################################################
###########################################################################################################################################################################################################################
###########################################################################################################################################################################################################################

#### OPTIMIZING CRYPTOCURRENCY MARKET ENTRY & EXIT STRATEGIES: A TECHNICAL TRADING ANALYSIS OF IOTA ####

# NOTE: Work on 'iota' commenced Tuesday, August 15, 2017 at the University of Colorado, Boulder's Leeds School of Business,
# under the direction of Dr. Dan Zhang & the advisement of Dr. Chuan He.

# Set Up WorkSpace
rm(list = ls()) # Clear Workspace
options(scipen = 999)
options(prompt = "R> ")
options("getSymbols.warning4.0" = F)
setwd("~/Workspace/iota/iotaData/")


# Install and Load Required R-Packages #
myPkgs <-
  c(
    # Graphical Analysis of Structural Causal Models
    "dagitty",
    # Pron. 'dagger' - Manipulate & Evaluate Directed Acrylic Graphs (DAGs)
    "dagR",
    # Package for Graphical Modeling, Including DAGs - dag()
    "gRbase",
    # Miscellaneous Functions for ``Grid'' Graphics
    "gridExtra",
    # Tools for Working with URLs and HTTP
    "httr",
    # A General-Purpose Package for Dynamic Report Generation in R
    "knitr",
    # Provides Bindings to the libcurl C Library | Supports Retrieving Data Using the R “connection” Interface.
    "curl",
    # Convert JSON data from/to R objects & stream, validate, and prettify JSON data
    "jsonlite",
    #
    "JSON",
    # I/O Input/Output
    "rio",
    # Provides Functions for Reading & Writing XML & HTML Documents
    "XML",
    # CSV file I/O, e.g. the read_csv function
    "readr",
    # Data Visualization
    "ggplot2",
    # Scales Map Data & Auto-Determines Breaks & Labels For Axes & Legends
    "scales",
    # Network Analysis & Graph Visualization
    "igraph",
    #
    "rJava",
    #
    "ploty",
    #
    "metricsgraphics",
    #
    "googleVis",
    #
    "dygraphs",
    #
    "ggiraph",
    # Time Series
    "zoo",
    # Time Series Analysis and Computational Finance
    "tseries",
    # R Interface to 'tslib' (a Python Package) | Performs Fast Operations for Time Series Objects
    "fts",
    # Package of time series tools and utilities.
    "timeSeries",
    # Time Frame Coding Kernel
    "tframe",
    # Tidies Up  Frecast Models & Prediction Work Flow, extending 'broom' package & 'forecast' objects to tidy DFs
    "sweep",
    # Breaks For Additive Season and Trend (BFAST) | Time Series Decomposition to Trend & Seasonal Componenets
    "bfast",
    # Manage Chronological & Calendrical Objects
    "timeDate",
    # Extract Time Components From Date-Object (mday(), wday(), et cetera)
    "TimeProjection",
    # Tools for Specifying Univariate Time Series Forecasts Using Regression Models,
    "forecast",
    # Used for querying and analyzing financial data such as stocks
    "quantmod",
    # 'Extensible Time Series' Class & Methods (converts to true time-based objects)
    "xts",
    # Econometric Tools for Performance & Risk Analysis
    "PerformanceAnalytics",
    # Tools for specifying time series regression models License GPL (>= 2)
    "tsModel",
    # Constructs 'Technical Trading Rules'
    "TTR",
    # Functions for Spatial Data Visualization & Modeling On Top of Static Maps from Online Sources (GoogleMaps etc.)
    "ggmap",
    # Creates Thematic Maps Like Choroplets & Bubble Maps From Spatial Data Visualizations.
    "tmap",
    # Tools for Reading and Handling Spatial Objects
    "maptools",
    # Loads US Census Boundary & Attribute Data as 'tidyverse' & 'sf'-Ready Data Frames
    "tidycensus",
    #An implementation of interpreted string literals, inspired byPython's Literal String Interpolation
    "glue",
    #
    "rga",
    #
    "RSiteCatalyst",
    #
    "roxygen2",
    #
    "shiny",
    #
    "openxlsx",
    #
    "gmodels",
    #
    "janitor",
    #
    "car",
    #
    "rcdimple",
    #
    "foreach",
    #
    "highcharter",
    #
    "profvis",
    #
    "tidytext",
    #
    "diffobj",
    #
    "prophet",
    #
    "feather",
    #
    "leaflet",
    #
    "DT",
    #
    "listviewer",
    #
    "editR",
    #
    "wordcloud",
    #
    "twitterR",
    #
    "lubridate",
    #
    "stringr",
    #
    "validate",
    #
    "magrittr",
    #
    "reshape2",
    #
    "plyr",
    #
    "dplyr",
    #
    "tidyverse",
    #
    "purrr",
    #
    "rvest",
    #
    "tidyquant",
    #
    "sqldf",
    #
    "Hmisc",
    #
    "RMySQL",
    #
    "googlesheets",
    #
    "waffle",
    #
    "sentimentr",
    #
    "rtrie",
    # Interface to the Poloniex Cryptocurrency Trading API
    "PoloniexR",
    # Unified Markets API Unterface (Bitstamp, Kraken, btc-e, Bitmarket)
    "Rbitcoin",
    #
    "coinmarketcapr",
    # Create Compact Hash Digests of R Objects
    "digest",
    # Provides bindings to 'libsodium' for encryption, decryption, signatures, password hashing
    "sodium",
    # R2HTML
    "R2HTML"
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
devtools::install_github("ropensci/internetarchive", build_vignettes = TRUE)

# Update Update
suppressPackageStartupMessages(suppressWarnings(suppressMessages(
  update.packages(ask = FALSE, checkBuilt = TRUE)
)))
# Load & Attach to Global Enviornment Required Packages
lapply(myPkgs, require, character.only = TRUE)










The operators <<-
  and ->  > are normally only used in functions, and cause a search to be made through parent environments for an existing definition of the variable being assigned. If such a variable is found (and its binding is not locked) then its value is redefined, otherwise assignment takes place in the global environment. Note that their semantics differ from that in the S language, but are useful in conjunction with the scoping rules of R. See ‘The R Language Definition’ manual for further details and examples.

In all the assignment operator expressions, x can be a name or an expression defining a part of an object to be replaced (e.g., z[[1]]). A syntactic name does not need to be quoted, though it can be (preferably by backticks).
rds forms of assignment <-
  = <<- group right to left, the other from left to right.

Value

value. Thus one can use a <- b <- c <- 6.
assign versus get

#### SET WORKSPACE ####
rm(list = ls()) # Clear Workspace
options(scipen = 999)
options(prompt = "R> ")
setwd("~/Workspace/iota/iotaData/") # Set Working Directory (wd)


# Load package 'devtools'
library('devtools')
# Load package 'roxygen2'
library('roxoygen2')
# Load package 'formattable'
library('formattable')

options("getSymbols.warning4.0" = F)

#### SET UP R PACKAGE FRAMEWORK ####


# creates framework and four folders
devtools::create("iota")
#R CMD check: devltools:: check() | Cmd + shift + E
devtools::check()

#### API CALL TO BITFINEX ####

# Load packages


#### IOTA SUPPLY & SI UNITS ####

options(scipen = 999) # Deny Scientific Notation Formatting

# Total supply of IOTA in iota in SI units

Iota = 1         # Iota
kiIota = 10 ^ 3  # Kilo Iota
miIota = 10 ^ 6  # Mega Iota
giIota = 10 ^ 9  # Giga Iota
tiIota = 10 ^ 12 # Tera Iota
piIota = 10 ^ 15 # Peta Iota
iotaSply = ((3 ^ 33 - 1) / 2) # Total Iota Supply

iotaSply

#### FUNCTION: 'convertIOTA(quant, from, to)' CONVERT from and to any iota SI unit scale


#how can I restrict input for 'i' to integers only as great or less than 33^3-1)/2

convertIOTA <- function(quant, from, to) {

  options(scipen = 999)
  quant <- NULL
  from <- NULL
  to <- NULL

  i <- 1     # Iota
  ki = 10 ^ 3  # Kilo Iota
  mi = 10 ^ 6  # Mega Iota
  gi = 10 ^ 9  # Giga Iota
  ti = 10 ^ 12 # Tera Iota
  pi = 10 ^ 15 # Peta Iota

  if (from == i && to == i) {
    result <- quant
    print(paste(result, 'Iota'))
  }
  if (from == i && to == ki) {
    result <- quant / 1000
    print(paste(result, 'Kilo Iota'))
  }
  if (from == i && to == mi) {
    result <- quant / 1000000
    print(paste(result, 'Mega Iota'))
  }
  if (from == i && to == gi) {
    result <- quant / 100000000
    print(paste(result, 'Giga Iota'))
  }
  if (from == i && to == ti) {
    result <- quant / 100000000000
    print(paste(result, 'Tera Iota'))
  }
  if (from == i && to == pi) {
    result <- quant / 100000000000000
    print(paste(result, 'Peta Iota'))
  }
  if (from == ki && to == i) {
    result <- quant * 1000
    print(paste(result, 'Iota'))
  }
  if (from == ki && to == ki) {
    result <- quant
    print(paste(result, 'Kilo Iota'))
  }
  if (from == ki && to == mi) {
    result <- quant / 1000
    print(paste(result, 'Mega Iota'))
  }
  if (from == ki && to == gi) {
    result <- quant / 10000
    print(paste(result, 'Giga Iota'))
  }
  if (from == ki && to == ti) {
    result <- quant / 100000
    print(paste(result, 'Tera Iota'))
  }
  if (from == ki && to == pi) {
    result <- quant / 10000000
    print(paste(result, 'Peta Iota'))
  }
  if (from == mi && to == i) {
    result <- quant * 1000000
    print(paste(result, 'Iota'))
  }
  if (from == mi && to == ki) {
    result <- quant * 1000
    print(paste(result, 'Kilo Iota'))
  }
  if (from == mi && to == mi) {
    result <- quant
    print(paste(result, 'Mega Iota'))
  }
  if (from == mi && to == gi) {
    result <- quant / 1000
    print(paste(result, 'Giga Iota'))
  }
  if (from == mi && to == ti) {
    result <- quant / 1000000
    print(paste(result, 'Tera Iota'))
  }
  if (from == mi && to == pi) {
    result <- quant / 100000000
    print(paste(result, 'Peta Iota'))
  }
  if (from == gi && to == i) {
    result <- quant * 1000000000
    print(paste(result, 'Iota'))
  }
  if (from == gi && to == ki) {
    result <- quant * 1000000
    print(paste(result, 'Kilo Iota'))
  }
  if (from == gi && to == mi) {
    result <- quant * 1000
    print(paste(result, 'Mega Iota'))
  }
  if (from == gi && to == gi) {
    result <- quant
    print(paste(result, 'Giga Iota'))
  }
  if (from == gi && to == ti) {
    result <- quant / 1000
    print(paste(result, 'Tera Iota'))
  }
  if (from == gi && to == pi) {
    result <- quant / 1000000
    print(paste(result, 'Peta Iota'))
  }
  if (from == ti && to == i) {
    result <- quant * 1000000000000
    print(paste(result, 'Iota'))
  }
  if (from == ti && to == ki) {
    result <- quant * 1000000000
    print(paste(result, 'Kilo Iota'))
  }
  if (from == ti && to == mi) {
    result <- quant * 1000000
    print(paste(result, 'Mega Iota'))
  }
  if (from == ti && to == gi) {
    result <- quant * 1000
    print(paste(result, 'Giga Iota'))
  }
  if (from == ti && to == ti) {
    result <- quant
    print(paste(result, 'Tera Iota'))
  }
  if (from == ti && to == pi) {
    result <- quant / 1000
    print(paste(result, 'Peta Iota'))
  }
  if (from == pi && to == i) {
    result <- quant * 1000000000000000
    print(paste(result, 'Iota'))
  }
  if (from == pi && to == ki) {
    result <- quant * 1000000000000
    print(paste(result, 'Kilo Iota'))
  }
  if (from == pi && to == mi) {
    result <- quant * 1000000000
    print(paste(result, 'Mega Iota'))
  }
  if (from == pi && to == gi) {
    result <- quant * 1000000
    print(paste(result, 'Giga Iota'))
  }
  if (from == pi && to == ti) {
    result <- quant * 1000
    print(paste(result, 'Tera Iota'))
  }
  if (from == pi && to == pi) {
    result <- quant
    print(paste(result, 'Peta Iota'))
  }
}

convertIOTA(32423, ti , mi)
## I am missing some cases, such as greater down to lesser, this code assumes you only want to convert upwards

# Test function
print(convertIOTA(12312, ti, ki))

#### FUNCTION: 'perOfIotaSply()' ####
#divisor <- siUnit #how do I know if my local variables are global or local to my function? to my package environment
# The tertiary function perOfIotaSply() accepts three arguments:

perOfIotaSply <- function(quant, siUnit) {
  i <- 1     # Iota
  ki = 10 ^ 3  # Kilo Iota
  mi = 10 ^ 6  # Mega Iota
  gi = 10 ^ 9  # Giga Iota
  ti = 10 ^ 12 # Tera Iota
  pi = 10 ^ 15 # Peta Iota
  result <- ((quant * siUnit) / iotaSply) * 100
  paste('You own ', result, '% of the total Iota supply.', sep = "")
}

perOfIotaSply(10.937, gi)

#### Function: n 'iotaMrkCap()' accepts 'priceOf_miIOTA' as its argument and outputs market capitalization
iotaSply = ((3 ^ 33 - 1) / 2) # total IOTA
iotaSply

iotaMktCap <- function(price) {
  mktCap <-  price * iotaSply / 1000000
  print(currency(mktCap))
}

# Call iotaMrkCap() function
iotaMktCap(price = 0.7955)
iotaMktCap()

####### NOTES
.onLoad <- function(libname, pkgname) {
  op <- options()
  op.devtools <- list(
    devtools.path = "~/R-dev",
    devtools.install.args = "",
    devtools.name = "Thomas A. Pepperz",
    devtools.desc.author = '"Thomas Pepperz <thomas.peppers@colorado.edu> [aut, cre]"',
    devtools.desc.license = "What license is it under?",
    devtools.desc.suggests = NULL,
    devtools.desc = list()
  )
  toset <- !(names(op.devtools) %in% names(op))
  if (any(toset))
    options(op.devtools[toset])

  invisible()
}

getOption("devtools.name")
tools::vignetteEngine().

# Load a script into a new environment and save it
env <- new.env(parent = emptyenv())
source("my-script.R", local = env)
save(envir = env, "my-script.Rdata")

# Later, in another R session
load("my-script.Rdata")



















##### Function: Iota Wallet Random Address Generator ####

# Load Function Package Dependencies
library(digest)
library(sodium)

# Produce Cryptographic Hash for New Seed
newSeedCryptoHash <-
  digest(
    newSeed,
    algo = c("xxhash64"),
    serialize = TRUE,
    file = FALSE,
    length = Inf,
    skip = "auto",
    ascii = FALSE,
    raw = FALSE,
    seed = 0,
    errormode = c("warn")
  )

# Evaluate newSeed Hashes for Identity by Testing Hash Input Against Hash Output
xxhash64Input <-
  newSeed
xxhash64Output <-
  c("44bc2cf5ad770999",
    "f06103773e8585df",
    "ef46db3751d8e999")

for (i in seq(along = xxhash64Input)) {
  xxhash64 <-
    digest(xxhash64Input[i], algo = "xxhash64", serialize = FALSE)
  cat(xxhash64, "\n")
  stopifnot(identical(xxhash64, xxhash64Output[i]))
}


# Perhaps I need to impose a beginning char rule?
# Should I store the full 243-char tryte security address and then extract the 81-char dpending on request?
# Adapt checksum from JavaScript? isValidAddress()?

####
generateAddress <- function(secLevel = 1) {
  if (secLevel == 1) {
    secLevel <- 81
  } else if (secLevel == 2) {
    secLevel <- 162
  } else if (secLevel == 3) {
    secLevel <- 243
  } else
    secLevel <- 81
  alphanumerics <- c(LETTERS, 0:9)
  walletAddress <-
    paste0(sample(alphanumerics, secLevel, replace = TRUE), collapse = "")
  return(walletAddress)
}

generateAddress()

#### Function To Generate an Iota Wallet Seed ####
generateSeed <- function() {
  seedLength = 81
  trytesAlphabet = c(9, 9, LETTERS)
  seed <-
    paste0(sample(trytesAlphabet, seedLength, replace = TRUE), collapse = "")
  return(seed)
}
newSeed <- generateSeed()
print(newSeed)

#### Iota API + Node Explorer
myIotaSeed = "PKK9NCTRHGA9XKWOLEXIPLXJGYL9WV9JVLHAOSUZMRVJEZ9YFDVIABVMMDKGSYFYPZFJPXLNSMFJHBNZJ"
myIotaAddress = "TJKNPQKBKIQDLMMEZVGICNCZHPZ9Y9UIPSLJHFHGIVXBH9PTJNDMGCHQCHBEZYRGOVTJVQGGIOHQZLVIBPSBRMYLJW"
trytesAlphabet = "9ABCDEFGHIJKLMNOPQRSTUVWXYZ"

#func NewSeed() Trytes {
#  b := make([]byte, 81)
#  if _, err := rand.Read(b)
#  err != nil {
#    panic(err)
#  }
#  seed := make([]byte, 81)
#  for i, r := range b {
#    seed[i] = TryteAlphabet[int(r)%len(TryteAlphabet)]
#  }
#  return Trytes(seed)
#}



