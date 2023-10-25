How often does the better team win the World Series?
====================================================

The world series is a *first to 4 wins* or *best of 7* match-up between the champions of the
American and National Leagues of Major League Baseball. In this
assignment, you are going to explain probability calculations related to
the world series and *first to k win* random variables.

Assignment
----------

In this assignment, you will write a blog post to answer a series of
questions related to the World Series. You will use the rules of
probability and discrete probability functions to answer the questions.
The audience of your blog post is an HR manager tasked with hiring a
data scientist. The HR manager is looking for candidates that can take a
data science concept and will explain the question and explain the
solution in a way that is accessible to a general audience. **Be sure**
to mention any assumptions of your solution.

Setup:

1.  Suppose that the Diamondbacks and the Rangers are teams competing in the
    World Series.
2.  Suppose that in any given game, the probability that the Diamondbacks win
    is *P*<sub>*d*</sub> and the probability that the Rangers win is
    *P*<sub>*r*</sub> = 1 − *P*<sub>*d*</sub>.

Questions to answer:

1.  Explain why the outcome of a *first to k wins* process is a bivariate random variable.  Explain the two outcomes that comprise the outcome.
1.  Derive the joint distribution of the bivariate random variable by completing a cross-table.  You may do this for a specific value of *P*<sub>*d*</sub> or for *P*<sub>*d*</sub> in general.
1.  What is the probability that the Diamondbacks win the World Series given
    that *P*<sub>*d*</sub> = 0.55?  Identify this quantity in the cross-table.
1.  What is the probability that the Diamondbacks win the World Series given
    that *P*<sub>*d*</sub> = *x*? This will be a figure (see below) with
    *P*<sub>*d*</sub> on the x-axis and *P*(Diamondbacks win World Series) on
    the y-axis.
1.  Suppose one could change the World Series to be *first-to-5-wins* or some
    other *first-to-k-wins* series. What is the smallest *k* so that
    *P*(Diamondbacks win World Series\|*P*<sub>*d*</sub> = .55) ≥ 0.8
1.  What is the smallest *k* so that
    *P*(Diamondbacks win World Series\|*P*<sub>*B*</sub> = *x*) ≥ 0.8? This
    will be a figure (see below) with *P*<sub>*d*</sub> on the x-axis
    and *k* is the y-axis.
1.  Calculate
    *P*(*P*<sub>*d*</sub> = 0.55\|Diamondbacks win World Series in 7 games)
    under the assumption that either *P*<sub>*d*</sub> = 0.55 or
    *P*<sub>*d*</sub> = 0.45. Explain your solution.
1.  Write an `R` function which generates random draws from the bivariate distribution.  Identify what the inputs are and the structure of the outputs. Explain why such a function might be helpful. `rws <- function(n,k,p){ ... }`
1.  The home field advantage is the edge which a team may have when playing a game at its home stadium. For example, it is the edge the Diamondbacks may have over the Rangers when the head-to-head match-up is in Arizona (AZ). It is the advantage the Rangers may have when the head-to-head match-up is in Texas (TX).  Explain how the derivation of the distribution would change if one were to account for home field advantage.  Suppose that the schedule of games is

| Game 1 | Game 2 | Game 3 | Game 4 | Game 5 | Game 6 | Game 7 |
|:------:|:------:|:------:|:------:|:------:|:------:|:------:|
|  AZ   |  AZ   |  TX   |  TX   |  TX   |  AZ   |  AZ   |



### Figure shells

![](../assets/probability-win-world-series.svg)

![](../assets/world-series-length-for-80pct-prob.svg)

### Submission instructions

1.  Within the class repo, create a
    folder called `18-world-series`
2.  Within the folder, create an .html for your blog post
3.  **The name of the blog post file must be `writeup.html`**
4.  Within the folder, include code scripts or .rmd or some other
    document that will successfully generate the output of the
    simulation when executed from within the folder. (Do not use
    absolute file paths.)
5.  Edit the README to be an index for the portfolio. (Optional)  
6.  Be prepared to share your blog post with the class when the
    deliverable is due.