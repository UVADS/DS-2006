#######################
# 1. Environments ----
# An environment is a set of objects: scalars, data frames, functions, formulas, arrays, etc.
# The `ls()` command will list all the objects in the current environment

a1 <- 3 # create a scalar object with name `a`
b1 <- function(x) x^2 # create a function with name `b`
c1 <- cows ~ pigs
d1 <- read.csv("http://hbiostat.org/data/repo/2.20.Framingham.csv") # Read into memory a data frame

ls() # This all the objects in the current environment
environment() # Gives the name of the current environment
loadedNamespaces() # Functions from loaded packages are not listed with `ls()`.  This command shows the current set of attached packages.


#################
# 2. Objects ----
#     A. Data Structures (http://adv-r.had.co.nz/Data-structures.html)
#     B. Formulas  
#     C. Functions

# | Dimension |   Homogeneous   | Heterogeneous |
# |:----------|:----------------|:--------------|
# |     1     | (atomic) vector | list          |
# |     2     | matrix          | data frame    |
# |     k     | array           |               |
# |-----------|-----------------|---------------|

# The "ATOMS" of vectors are (a) logical, (b) integer, (c) double, (d) character, (e) complex, and not for everyday consumption (d) raw
e1 <- c(TRUE, FALSE, FALSE, FALSE, NA) # Atomic vector of logical
f1 <- c(1L, 3L, -9L, NA_integer_) # Atomic vector of integers
g1 <- c(4.0, 5L, pi, pi/2, pi/3, pi/4, NA_real_, Inf, -Inf, NaN) # Atomic vector of double
h1 <- c("This","is","a","vector","of","strings", NA_character_)
i1 <- c(3+4i, 7+8i, NA_complex_) # Vector of complex

# Note that each of the atoms have specific type of NA
# However, one can typically use `NA` and R will coerced it to the correct type of NA
h1[1] <- NA 
h1 # Even though we used `NA`, R insert NA_character_

d1 %>%
  mutate(newvar = case_when(
    sbp < 100 ~ "Low BP"
  , dbp < 80 ~ "Low DBP"
  , sbp > 135 ~ "High BP"
  , TRUE ~ NA_character_
  ))

# Arrays are multi-dimensional objects of a single type of atom
# Matrices are 2-dimensional arrays
j1 <- array(sample(-105:105,2*3*5*7), dim = c(2,3,5,7))
j1
k1 <- array(LETTERS, dim = c(4,5))
k1
l1 <- matrix(LETTERS[1:20], 4, 5)
l1

# Lists are very useful objects because the can hold any set of objects, even other lists
j1 <- list(a = 5, b = 1L, c = g1, d = head(d1), e = y~x+2, f = mean, g = lm(c(1,2)~c(3,4)))

# If one does not know the type or contents of an object, use the `str` command
str(a1)
str(j1)
m1 <- c(y~x, y~x+w, y~z+w+z)
str(m1)
n1 <- c(function(x){x}, function(x){x+x^2}, function(x){x+x^x+x^3})
str(n1)

#-#-#-# Exercise: What are the following data structures?

d1 %>%
  mutate(sex2 = case_when(
     sex == 1 ~ "Male"
   , sex == 2 ~ "Female"
   , TRUE ~ NA_character_
  )) %>%
  head %>% str

o1 <- factor(d1$sex, 1:2, c("Male","Female"))
d1 <- d1 %>%
  mutate(sex2 = case_when(
     sex == 1 ~ "Male"
   , sex == 2 ~ "Female"
   , TRUE ~ NA_character_
  )) %>%
  mutate(sex3 = factor(sex,1:2,c("Male","Female"))) %>%
  mutate(sex4 = as.factor(sex2))

str(o1)

o1 <- factor(sample(1:3,100,TRUE), 1:3, c("Left","Right","Ambidextrous"))
p1 <- array(o1, c(10,10))


# A data.frame is a special type of list.  Each element is an atomic vector of the same length.
str(d1)
is.list(d1)

######################
# 3. Common tasks ----  
#     A. Reading data  
#     B. Writing data  
#     C. Packages  
#     D. Creating data structures  
#     E. Loops  
#     F. Apply  
#     G. For others see http://adv-r.had.co.nz/Vocabulary.html


?read.csv
?data.table::fread # Suuuuuuuuper fast (for big .csv)
?read.fwf # fixed width formats
# To read formats from other programs, see: https://CRAN.R-project.org/package=foreign
?readRDS # R's object format ... can be any R object, not just a data.frame

?write.csv
?saveRDS # Save R object ... any R object

# Create data structure from others
c("A","string") # c for COMBINE
seq(22,44, by=3) # seq for SEQUENCE
seq(22,44, length=100)
1:5 # sequences jumping by 1
pi:(5*pi)
rep(1:4,15) # r for REPEAT
rep(2^(2:4), each = 3)
rep(4:29, length=100)
seq_along(j1) # 1:length(j1)
rev(LETTERS)
rev(j1)

cbind(1:3,10:12) # c for COLUMN bind
rbind(4:44, seq(0,1,length=41)) # r for ROW bind

q1 <- list(nums = 1:26, upper = LETTERS, lower = letters) # list of vectors to data.frame
r1 <- as.data.frame(q1)
head(r1)
s1 <- as.data.frame(p1) # Array to data.frame

t1 <- c(j1, r1) # Combine lists

########################################################
# 4. Subsetting (http://adv-r.had.co.nz/Subsetting.html)
#     A. index
#     B. logicals
#     C. names
#     D. $ (for lists)

e1
e1[3]  # Index of a vector (returns a vector)
e1[c(3,1,2)]

t1[2]  # Index of a list (returns a list)
t1[c(3,2)]
t1[[2]] # Double bracket returns the element

# [row, col]
p1[2,c(2,3)] # Index for an array (NOTE: it will simplify to vector if possible)
p1[2,c(2,3), drop = FALSE] # `drop = FALSE` means do not simplify to vector 
p1[2:3, c(3,9)]
p1[2:4, ] # Leave row or col input empty = give all the rows or cols 
p1[, 3]

# Can repeat index
e1[c(2,2,2,2)]
t1[c(3,3,3,3)]
p1[rep(1,3), ]

# Logicals
f1
f1[c(TRUE, FALSE, TRUE, FALSE)]
p1[c(FALSE, TRUE), c(FALSE, TRUE, TRUE)]  # What happens if the TRUE/FALSE vector is the wrong number of elements?

j1
j1[c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE)]

# Multiple brackets
p1[2:3,4:6]
p1[2:3,4:6][,2]

j1[c(TRUE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE)][[1]]

# Names
names(j1)
j1["c"]
j1[["c"]]

f1
names(f1) <- c("cow","pig","duck")
f1
f1["duck"]

head(d1)
d1[1:18, c("age","bmi")]

# Can combine all the ways to subset
head(d1)
d1[d1$sex == 1, c("sbp","sex","bmi")][1:13,]
d1[d1$sex == 1, c("sbp","sex","bmi")]["9",]  # WHAT IS THIS? Rownames

# subset command
subset(d1,  sex == 2 & chdfate == 1 & bmi<20, id )

# dplyr verbs for data.frames
require(dplyr)
d1  %>% 
  filter(age < 33)  %>% 
  select(bmi:id)

# $
j1$b
head(d1$age)

#####################
# 5. Functions I ----  
#     A. Writing  
#     B. Default inputs  
#     C. Special infix operators
#     D. Dots
#     E. Invisible return

u1 <- function(a,b,c,d){
  if(b==0) stop("NO! YOU CAN'T DIVIDE BY ZERO. B CANNOT BE 0")
    a/b+c/d
}
# What does `u1` return?
u1(1,0,-8,3)
u1(1,1,3,2)

v1 <- function(a,b=2,c=1,d=99){
    a/b+c/d
}
v1(2)
v1(2,3,3,2)

3 + 4 # This is a function
`+`(3,4)

# Two input functions are special
`%u%` <- function(a,b){
    sqrt(a)/log(abs(b) + 1)
}

4 %u% 2
3 %u% 2 %u% 8 %u% pi

`%karolina%` <- function(a,b){
    sqrt(a)/log(abs(b) + 1)
}

6 %karolina% 9

1:10 %u% 11:20
outer(1:4, -5:5, FUN = "%u%")

# Dots
w1 <- function(a, ...){
    plot(a[,2:3], ...)
}
w1(d1)
w1(d1, col="red", pch=4)

# Invisible return
boxplot(d1$bmi) # Generated plot, but no output
x1 <- boxplot(d1$sbp) # Generated plot AND output
x1

y1 <- function(a,b){
    out <- outer(a,b,"%u%")
    image(out)
    invisible(out)
}
y1(1:100,-100:-1)
z1 <- y1(1:100,-100:-1)
str(z1)

##################
# 6. The pipe ----

sum(log(sqrt(select(d1,age)),base=10))

# OG magrittr pipe
d1 %>% 
  pull(age)  %>% 
  sqrt  %>% 
  log(base=10)  %>% 
  sum

d1 %>% 
  lm(sbp ~ dbp, data = .)  # Use the dot if the piped objects needs to go to an input other than the first

d1 %>% 
  split(.$sex2) %>%  # Can use the input multiple times
  lapply(function(x){x$age %>% mean})

# New base R pipe
d1 |> 
  pull(age) |> 
  sqrt() |> # Note the parentheses have to be used
  log(base=10) |> 
  sum()

d1 |>  
  lm(sbp ~ dbp, data = _) # Use `_` instead of `.` with new pipe

#----------------
# 7. Functions II  
#     A. S3 Class  
#     B. New generics  
#     C. Functions of functions  
#     D. Debugging  
#     E. Namespace

a2 <- d1 %>% 
  lm(sbp ~ dbp, data = .) 
# What type of objects is a2?
str(a2)
plot(a2)

b2 <- ecdf(d1$sbp)
# What type of object is b2?
str(b2)
plot(b2)

# How did the plot command know what to plot for a2 and b2?
# ANSWER: class
plot
class(a2)
class(b2)

stats:::plot.lm
plot.ecdf
methods(plot)  # Note the *
getAnywhere(plot.lm)
methods(class = class(a2))
names(a2)
a2[["coefficients"]]

lm(sbp ~ dbp, data = d1) %>% 
  summary %>% 
  `[[`("r.squared")

summary(lm(sbp ~ dbp, data = d1))[["r.squared"]]


?plot.ecdf
?stats:::plot.lm

plot.pig <- function(x, ...){
  x <- c(-0.8210938,-0.7429688,-0.5710938,-0.3992188,0.08515625,0.5539063,0.7101563,0.83125,0.8507812,0.7570312,0.4640625,0.0265625,-0.5515625,-0.8523438,-0.8953125,-0.7234375,-0.746875,-0.7507812,-0.5828125,0.3351562,0.4992187,0.6984375,0.6984375,0.6710937,-0.4304688,-0.3640625,-0.07109375,0.0578125,0.26875,-0.2820313,0.09296875,-0.1335937,-0.1335937,-0.1414063,-0.06328125,-0.07109375,-0.07109375)
  y <- c(0.2398738,0.5020309,0.6505866,0.7161259,0.7204952,0.5937859,0.3272595,-0.1140384,-0.3849341,-0.843709,-0.9485719,-1.162667,-0.9747876,-0.5946598,-0.1883162,0.4102759,0.580678,0.886528,0.6374788,0.5195081,0.7117566,0.8472045,0.6462173,0.4015373,-0.4067805,-0.5160126,-0.6383526,-0.599029,-0.4024112,0.1044259,0.1655959,-0.02228336,-0.08782264,-0.1664698,0.003932357,-0.07471478,-0.1795776)
  plot(x,y)
}

c2 <- 3
class(c2) <- "pig"
plot(c2)
plot(3)


# Functions can be inputs
apply(p1,2,FUN=table)
p2 <- array(rnorm(25),c(5,5))
apply(p2,1,min)

#d3 <- 
#lapply(d1,function(x){sum(is.na(x))})

d2 <- function(n, FUN = min, dist = "norm", ...){
    rf <- get(paste("r",dist, sep=""))
    draws <- array(rf(n*1000, ...), dim = c(n,1000))
    sdist <- apply(draws,2, FUN)
    plot(density(sdist))
    hist(sdist, freq=FALSE, add=TRUE, breaks=50)
}

d2(100)
d2(1000, mean)
d2(1000, median, "exp", 4)


# Step through inside the function
d2 <- function(N, FUN = min, dist = "norm", ...){
browser()
    rf <- get(paste("r",dist, sep=""))
    draws <- array(rf(N*1000, ...), dim = c(N,1000))
    sdist <- apply(draws,2, FUN)
    plot(density(sdist))
}

d2(1000)



#########################
# 8. Plots ----
#     A. Base R graphics  
#     B. ggplot2 graphics  
#     C. Lattice graphics  

#############################################
#  9. Math operations and other commands ----
#  http://adv-r.had.co.nz/Vocabulary.html


# 10. Helpful packages
#     A. data.table
# 11. How to get help