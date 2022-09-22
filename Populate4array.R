


## populate array function
populate4array <- function(d1, d2, d3, d4, inc, arr) {
  ## documentation says that "byref" needs to define a new object
  arr4 <- arr
  arr4 <- array(dim = c(d1, d2, d3, d4))
  for (i in 1:d1) {
    for (j in 1:d2) {
      for (k in 1:d3) {
        for (l in 1:d4) {
          inc <- inc + 1
          arr4[i, j, k, l] <- inc
        }
      }
    }
  }
  ## populate the modified object with the new object data
  arr <- arr4
}

inc1 <- -1

array4a <- array(dim = c(1))
array4b <- array4a

nm <- array(dim = c(4))
nm[1] <- 2
nm[2] <- 3
nm[3] <- 2
nm[4] <- 3

array4a <- populate4array(nm[1], nm[2], nm[3], nm[4], inc1, array4a)

for (i in 1:length(nm)) {
  nm[i] <- nm[i] +1
}

array4b <- populate4array(nm[1], nm[2], nm[3], nm[4], inc1, array4b)


