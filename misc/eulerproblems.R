## Problem 2
n <- 35
out <- rep(NA, n)
out[1:2] <- c(0,1)
for(i in 3:n) out[i] <- sum(out[c(i-2,i-1)])
out <- out[out<4E6]
sum(out[out %% 2 == 0])

## Problem 3
primefac <- function(x){
  if(x==1) return(NULL)
  y <- ceiling(sqrt(x))
  for(i in 2:y){
    if(x%%i==0) return(c(i,primefac(x/i)))
  }
  return(x)
}

primefac(1000000000100011)
primefac(1000000000100012)
primefac(1000000000100013)
