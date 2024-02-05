# HW 3 Solutions

1.  Working Directory

-   What is the working directory?

> The working directory is a folder in which the program will look for
> input files and save output files, unless the location of the file is
> specified. For example, the command `read.csv("survey.csv")` will look
> for the `survey.csv` file in the working directory.

-   What are the best practices for setting and using the working
    directory?

> Write your code assuming that the working directory is the folder in
> which the code will be executed.

> Use **relative file paths**. For example, use **..** syntax.

1.  Create a string called `name` which stores your name.

<!-- -->

    name <- "Thomas Stewart"

1.  Run the `ls()` command to see the objects in the environment.

<!-- -->

    ls()

    ## [1] "name"

1.  Create vectors of length 5 with the following atoms. Call them `v1`,
    `v2`, …, `v4`.

-   logicals
-   integers
-   doubles
-   characters

<!-- -->

    v1 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
    v2 <- c(1L, 0L, 9L, 100000L, 4L)
    v3 <- c(sqrt(2), pi, (1+sqrt(5))/2, 2.0, 5.1)
    v4 <- c("This is", "a", "vector of", "character strings",".")

1.  Place the vectors `v1` … `v4` into a list called V.

<!-- -->

    V <- list(v1, v2, v3, v4)

1.  Use `str` to inspect `V`

<!-- -->

    str(V)

    ## List of 4
    ##  $ : logi [1:5] TRUE TRUE FALSE FALSE TRUE
    ##  $ : int [1:5] 1 0 9 100000 4
    ##  $ : num [1:5] 1.41 3.14 1.62 2 5.1
    ##  $ : chr [1:5] "This is" "a" "vector of" "character strings" ...

1.  Create a matrix of size 4 x 5 of numeric values.

<!-- -->

    M <- matrix(rnorm(20), 4)
    M

    ##             [,1]       [,2]       [,3]       [,4]       [,5]
    ## [1,]  1.21628424  0.5231690  0.6641520  0.3297884 -0.1372919
    ## [2,]  0.82578789 -1.9394738 -1.1094321 -0.1921898  0.4198023
    ## [3,] -1.79625233 -1.3379700  0.5362686 -0.3931573  0.3875229
    ## [4,]  0.03021345 -0.2625994  0.8354877 -1.4724819 -2.0997397

1.  Create a sequence from 22 to 44 using the `seq` command.

<!-- -->

    seq(22,44)

    ##  [1] 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44

1.  Create an array with `cbind`

<!-- -->

    cbind(A = v3, B = 1:5)

    ##             A B
    ## [1,] 1.414214 1
    ## [2,] 3.141593 2
    ## [3,] 1.618034 3
    ## [4,] 2.000000 4
    ## [5,] 5.100000 5

1.  Grab the 3rd element of the vector `v3`

<!-- -->

    v3[3]

    ## [1] 1.618034

1.  Use the following data frame, `d1`, and grab the 4th column.

<!-- -->

    d1 <- read.csv("http://hbiostat.org/data/repo/2.20.Framingham.csv")
    head(d1[,4]) # Show only first 6 elements

    ## [1] 267 192 207 231 271 182

    head(d1[[4]])

    ## [1] 267 192 207 231 271 182

1.  Use `d1` and grab the 5th row.

<!-- -->

    d1[5,]

    ##   sex sbp dbp scl chdfate followup age  bmi month   id
    ## 5   1 162  98 271       1      169  39 28.4    11 3977

1.  Use `d1` and grab the `bmi` column.

<!-- -->

    # These are all equivalent
    z1 <- d1[,"bmi"]
    z2 <- d1$bmi
    z3 <- d1[["bmi"]]
    head(z1, 8) # First 8 entries

    ## [1] 25.0 28.4 25.1 26.2 28.4 33.3 25.3 27.9

1.  Run the following code chunk. Explain what the pipe operator does.

<!-- -->

    require(dplyr)

    # Old way
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
      split(.$sex) %>%  # Can use the input multiple times
      lapply(function(x){x$age %>% mean})

    # New base R pipe
    d1 |> 
      pull(age) |> 
      sqrt() |> # Note the parentheses have to be used
      log(base=10) |> 
      sum()

    d1 |>  
      lm(sbp ~ dbp, data = _) # Use `_` instead of `.` with new pipe

> The pipe operator allows the output of one command to be used as an
> input in a subsequent command. In this way, the pipe creates a chain
> of commands to generate a final output. Because the commands are
> written in the order in which they are executed, the code is easier to
> read.

1.  UVA phone numbers are often of the form (434) 924-????. Modifying
    the code below, find the number of UVA phone numbers of the
    form (434) 924-???? which are prime. (You may need to install the
    `primes` package.)

<!-- -->

    prime <- function(x){
      ps <- primes::generate_primes(min = 2, max = ceiling(sqrt(x)))
      for(i in ps) if(x%%i == 0) return(FALSE)
      TRUE
    }

    k <- 0
    for(i in 4349240000:4349249999){
        k <- k + prime(i)
    }
    k

    ## [1] 471

1.  Modify the code above to find the list UVA phone numbers of the
    form (434) 924-???? which are prime.

<!-- -->

    out <- integer()
    for(i in 4349240000:4349249999){
      if(prime(i)) out <- c(out,i)
    }
    head(out, 21) # Listing the first 21

    ##  [1] 4349240003 4349240029 4349240059 4349240069 4349240099 4349240123
    ##  [7] 4349240141 4349240179 4349240197 4349240279 4349240299 4349240309
    ## [13] 4349240327 4349240351 4349240383 4349240393 4349240411 4349240431
    ## [19] 4349240447 4349240513 4349240521
