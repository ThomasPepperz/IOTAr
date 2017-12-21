convertIOTA <-
  function(quant, from, to) {
    options(scipen = 999)
    if (from == i && to == i) {
      result <- quant
      print(paste(result, 'Iota'))
    }
    if (from == i
        && to == ki) {
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
