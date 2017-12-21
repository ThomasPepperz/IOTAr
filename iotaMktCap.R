iotaMktCap <-
function(priceOf_miIOTA){
  mktCap <-  priceOf_miIOTA * iotaSply/1000000
  print(currency(mktCap))
  }
