Consider two investment opportunities. The first is a large water well
project with a potential payoff of $100. The second opportunity is an
investment series of 10 small wells, each with a potential payoff of
$10. The probability that any well (large or small) returns a payoff is
0.1.

The functions below simulate the outcomes from the two investments.

    big_well <- function(N) 100*rbinom(N, 1, 0.1)
    sma_well <- function(N)  10*rbinom(N, 10, 0.1)

For example, to simulate 10 outcomes, we can use the commands
`big_well(10)` or `sma_well(10)`.

    big_well(10)

    ##  [1] 0 0 0 0 0 0 0 0 0 0

    sma_well(10)

    ##  [1]  0 10  0 20 30 10  0 10 20 30

Thinking about probability as a long-run proportion, one can generate
many replicates and then tabulate.

    big_well(1E6) |> 
      table() 

    ## 
    ##      0    100 
    ## 900542  99458

    big_well(1E6) |>
      table() |>
      proportions()

    ## 
    ##        0      100 
    ## 0.899896 0.100104

1.  Write code that generates the long-run proportions for the small
    well investment opportunity.

2.  Create a figure which visualizes the long-run proportions. (I know
    we have not covered this in-class; I’m asking you to search online
    for how you might do this.)

Please read chapter 3 of Understanding Uncertainty.

1.  In section 3.9, the author introduces the notation *p*(*E*|*K*).
2.  What does *K* represent?  
3.  Create an example where the probability of an event is different
    when *K* is different.
4.  If *E* denotes an event, what does *E*<sup>*c*</sup> denote?
5.  Consider a potentially unfair six-sided die. Let *E* denote the
    outcome of a die roll. If *P*(*E* is even ) = .6, what must *P*(*E*
    is odd ) be? Why?

### Submission instructions

1.  Within your course repo, create a file called `HW5.md` with your
    answers formatted with markdown.
2.  Sync your local and online repositories. (Push the local repo to
    Github.com.)
3.  The deliverable should be your own work. You may **discuss**
    concepts with classmates.
