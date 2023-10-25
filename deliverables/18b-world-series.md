Bernoulli Sequences and Random Variables
========================================

There are a number of random variables that can be generated from a Bernoulli sequence.

| Random variable | Stopping rule | Distribution |
|---|---|---|
| Number of successes in N trials | prespecified N | Binomial |
| Number of failures | K successes | Negative Binomial |
| (Overall Success/Failure, number of trials) | K successes or K failures | "Word Series" |
  
Note that the world series random variable is a bivariate random variable, returning simultaneously the team that won and the number of games that were played.  For example, the outcome (A, 4) would indicate that team A won in 4 games.  (B, 6) indicates that team B won in 6 games.

In this activity, you are going to write a function which generates random draws from the world series distribution.  The two parameters of the distribution are $k$ and $p_A$.

## Steps    

1. Set $k$ and $p_A$ to specific values, say $k <- 4$ and $p_A <- 0.55$
1. Create a Bernoulli sequence of length $2*k-1$ (which is the maximum number of trials/games).  $s <- rbinom(2*k-1,1,p_A)$
1. From the sequence, determine if team A or B won the series.  Store the result in object $o$ (for outcome).
1. From the sequence, determine how many games were played. Store the results in object $n$ (for number of games/trials).
1. Package the previous code into a function with input $k$ and $p_A$ and output vector with $o$ and $n$.

## Questions

1. Generate 5000 draws from the world series distribution.  (Use and $k$ and $p_A$.)
1. With the draws, create the contingency table with number of games as the row variable and winner as the column variable.  Include conditional probabilities.
1. Supposing that the world series ends in $2*k-1$ games, what is the probability that team $A$ will win?