# Bayes Rule

Please read sections 6.1 through 6.4 of Understanding Uncertainty.

Suppose you could randomly sample words (with replacement) from the
English language. Let the probability that a word is selected correspond
to the word’s popularity in English literature. (For example, words
*the* and *to* are very likely to be selected whereas words like
*indubitably* and *hullaballoo* are less likely.) Rather than recording
the word, imagine recording the first vowel (a, e, i, o, u, and
sometimes y) and its location in the word. So, if *cr**o**mulent* were
selected, then (3, o) would be recorded.

The `mystery` function, available by executing the following command,
will generate draws from the process described above.

    source("https://tgstewart.cloud/mystery.R")

The mystery function takes a single input, which is the number of draws
to generate from the process. For example:

    > mystery(12)
       location vowel
    1         2     u
    2         1     a
    3         2     e
    4         1     i
    5         2     a
    6         2     a
    7         1     a
    8         2     e
    9         2     a
    10        2     o
    11        2     e
    12        2     o

Please note that some words do not have vowels, in which case (Inf, NA)
is returned.

Use this function to answer the following questions. Your specific
numerical answer is not as important as the strategy you use to solve
the problem. Show your strategy.

> (Option 1) The following table can be used to answer the following
> questions.

    require(dplyr)

    ## Loading required package: dplyr

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    set.seed(223589213)
    d1 <- mystery(10000000) |> mutate(vowel = ifelse(is.na(vowel), "zMissing",vowel))
    descr::CrossTable(
          d1$location
        , d1$vowel
        , prop.chisq = FALSE
    )

    ##    Cell Contents 
    ## |-------------------------|
    ## |                       N | 
    ## |           N / Row Total | 
    ## |           N / Col Total | 
    ## |         N / Table Total | 
    ## |-------------------------|
    ## 
    ## ====================================================================================================
    ##                d1$vowel
    ## d1$location           a          e          i          o          u          y   zMissing      Total
    ## ----------------------------------------------------------------------------------------------------
    ## 1               1044279     288746     603800     574432     159363       4377          0    2674997
    ##                   0.390      0.108      0.226      0.215      0.060      0.002      0.000      0.267
    ##                   0.427      0.124      0.366      0.223      0.256      0.046      0.000           
    ##                   0.104      0.029      0.060      0.057      0.016      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 2               1032774    1315858     758888    1614227     400706      80725          0    5203178
    ##                   0.198      0.253      0.146      0.310      0.077      0.016      0.000      0.520
    ##                   0.422      0.563      0.459      0.626      0.643      0.852      0.000           
    ##                   0.103      0.132      0.076      0.161      0.040      0.008      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 3                355094     679234     263030     357058      58043       9451          0    1721910
    ##                   0.206      0.394      0.153      0.207      0.034      0.005      0.000      0.172
    ##                   0.145      0.291      0.159      0.139      0.093      0.100      0.000           
    ##                   0.036      0.068      0.026      0.036      0.006      0.001      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 4                 11866      33965      20019      24810       4598        162          0      95420
    ##                   0.124      0.356      0.210      0.260      0.048      0.002      0.000      0.010
    ##                   0.005      0.015      0.012      0.010      0.007      0.002      0.000           
    ##                   0.001      0.003      0.002      0.002      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 5                  2778      16797       5438       3637        777         32          0      29459
    ##                   0.094      0.570      0.185      0.123      0.026      0.001      0.000      0.003
    ##                   0.001      0.007      0.003      0.001      0.001      0.000      0.000           
    ##                   0.000      0.002      0.001      0.000      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 6                  1018        783        579       2305         43         39          0       4767
    ##                   0.214      0.164      0.121      0.484      0.009      0.008      0.000      0.000
    ##                   0.000      0.000      0.000      0.001      0.000      0.000      0.000           
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 7                    49        198         46        229         21          3          0        546
    ##                   0.090      0.363      0.084      0.419      0.038      0.005      0.000      0.000
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 8                    10          1         16         40          4          0          0         71
    ##                   0.141      0.014      0.225      0.563      0.056      0.000      0.000      0.000
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 9                    89          3          0          1          1          0          0         94
    ##                   0.947      0.032      0.000      0.011      0.011      0.000      0.000      0.000
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## 10                    0          0          2          1          0          0          0          3
    ##                   0.000      0.000      0.667      0.333      0.000      0.000      0.000      0.000
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.000           
    ## ----------------------------------------------------------------------------------------------------
    ## Inf                   0          0          0          0          0          0     269555     269555
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      1.000      0.027
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      1.000           
    ##                   0.000      0.000      0.000      0.000      0.000      0.000      0.027           
    ## ----------------------------------------------------------------------------------------------------
    ## Total           2447957    2335585    1651818    2576740     623556      94789     269555   10000000
    ##                   0.245      0.234      0.165      0.258      0.062      0.009      0.027           
    ## ====================================================================================================

1.  If *y* is the first vowel in a word, what is the probability that it
    will occur in the third position, like the word *why*?

> (Option 1) From the table, P(3|y) = 0.100.

> (Option 2)

    mystery(100000) |>
      filter(vowel == "y") %>% 
      mutate(event = 1*(location %in% 3)) %>% 
      pull(event) %>% 
      mean

    ## [1] 0.09641026

1.  Which vowel is most likely to start a word?

> (Option 1) From the conditional row probabilities in the table: P(a|1)
> = 0.39, which is the highest in the row.

> (Option 2)

    mystery(100000) |>
      filter(location == 1) |>
      pull(vowel) |>
      table() |>
      proportions()

    ## 
    ##           a           e           i           o           u           y 
    ## 0.391554270 0.110606004 0.227786753 0.211105684 0.056993651 0.001953639

1.  Suppose a randomly selected word’s first vowel is in the fourth
    position. Which vowel is most likely to be first?

> (Option 1) From the conditional row probabilities, P(e|4) = 0.356,
> which is the highest in the row.

> (Option 2)

    mystery(100000) |>
      filter(location == 4) |>
      pull(vowel) |>
      table() |>
      proportions()

    ## 
    ##           a           e           i           o           u           y 
    ## 0.132762313 0.353319058 0.203426124 0.253747323 0.055674518 0.001070664

1.  What is the probability that a randomly selected word does not have
    vowels (a,e,i,o,u, and sometimes y)?

> (Option 1) From the margin of the table, P(Inf) = P(Missing vowel) =
> 0.027

> (Option 2)

    mystery(100000) |> 
      mutate(event = is.na(vowel)) |>
      pull(event) |>
      mean()

    ## [1] 0.02647

1.  Are first vowels more likely to be in an odd or even position?

> (Option 1) From the margin of the table, P(odd) = 0.4427006

> (Option 2)

    mystery(100000) |> 
      mutate(event = location%%2) |>
      pull(event) |>
      table(useNA = "always") |>
      proportions()

    ## 
    ##       0       1     NaN    <NA> 
    ## 0.52871 0.44412 0.02717 0.00000
