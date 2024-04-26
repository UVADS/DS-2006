# Continuous probability models

For each of the following families of models, 
1. Identify the potential outcomes
1. Identify the model parameters
1. For arbitrary model parameters, generate a dataset of 100 draws and create three figures: (a) the histogram with the PDF overlaid, (b) the eCDF with CDF overlaid, and (c) a Q-Q plot.

FAMILIES: Normal, gamma, Weibull

```
# Normal
# -infty < x < infty
# mu and sigma
mu <- 15
sigma <- 3
y <- rnorm(100, mu, sigma)
hist(y, freq=FALSE)
curve(dnorm(x, mu, sigma), add=TRUE, col = "red", lwd = 3)
plot(ecdf(y))
curve(pnorm(x, mu, sigma), add=TRUE, col = "red", lwd = 3)
pp <- ppoints(100)
plot(qnorm(pp, mu, sigma), quantile(y, pp))
abline(0,1)
```

1. Consider the results of an experiment where 150 fully-charged laptops.  Investigators recorded how long the laptop batteries lasted under a usual load.  Estimate-by-eye the distribution of the failure time using the eCDF and the histogram using the following Desmos calculators: (CDF)[https://www.desmos.com/calculator/os2mtzgzqg] and (histogram)[https://www.desmos.com/calculator/ffp7vrz7pn].

1. With your estimated model, calculate the probability that the laptop battery will last more than 10 hours.

1. Estimate a probability model for battery cycle length using method of moments and maximum likelihood.  From each model, calculate the probability that the laptop battery will last more than 10 hours.

```
L <- c(6.5,15.5,15.2,10.8,3.7,11.2,12.4,11.6,7.8,5.9,6.6,7.8,8.8,5.6,12.8,11.7,13.3,12.6,9.3,2.5,11.3,14.2,6.3,7.1,8,8.6,6.5,4.1,13.7,7.3,14.3,12.5,8.3,7.2,11.5,6.3,3.6,12.6,8.5,10.2,7.5,10.5,4.8,10.1,11.8,8.3,11.6,8.4,9,12.2,9.1,6.1,4,16.3,9.7,20.6,11.1,6.2,8.5,4.5,9.6,8.5,9.3,6.7,15.1,12.6,8.1,11.7,10.5,14.1,7.8,12,15.4,5.7,14.6,12.2,17,11.5,4.4,10,13.7,12.6,6,5.6,4.8,18.1,12.3,13.3,10.7,17.6,6.5,9.1,9.1,3.3,7.4,10.5,11.2,9.6,8.5,15.6,8.1,4.9,12.3,8.7,4.5,7.7,7.1,11.4,3.7,5.4,7.8,5.7,8.8,9.3,7.7,7.1,6,20,9.1,17.2,8.6,5.5,8,13.7,6.6,7.5,10.9,8,17.5,12.6,12.3,6.8,4,5.2,21.5,9.5,11,8.7,11.7,3.7,20,13.9,14.9,4.5,6.7,3.9,8.6,16.3,6,14.3)

# Method of moments
shape <- mean(L)^2/var(L)
rate <- mean(L)/var(L)

hist(L, freq=FALSE)
curve(dgamma(x,shape,rate,lwd=3,col="red"))
1-pgamma(10, shape, rate)


# MLE
g1 <- function(x=c(a=1,b=1)) -sum(dgamma(L,x[1],x[2],log=TRUE))
hat <- stats4::mle(g1,start=c(shape,rate))
curve(dgamma(x,hat@coef[1],hat@coef[2]),lwd=3,col="blue",add=TRUE)
1-pgamma(10, hat@coef[1], hat@coef[2])
```





### Submission instructions

1.  Within your course repo, create a folder called `HW16`
1.  Within the folder, create an .rmd script and and .md report with your solutions.
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **show** your code to others.