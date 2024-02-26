Bayes Rule
========

Please read sections 6.1 through 6.4 of Understanding Probability.

Suppose you could randomly sample words (with replacement) from the English language.  Let the probability that a word is selected correspond to the word's popularity in English literature.  (For example, words *the* and *to* are very likely to be selected whereas words like *indubitably* and *hullaballoo* are less likely.)  Rather than recording the word, imagine recording the first vowel (a, e, i, o, u, and sometimes y) and its location in the word.  So, if *cr**o**mulent* were selected, then (3, o) would be recorded.

The `mystery` function, available by executing the following command, will generate draws from the process described above.
```
source("https://tgstewart.cloud/mystery.R")
```

The mystery function takes a single input, which is the number of draws to generate from the process.  For example: 

```
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
```

Please note that some words do not have vowels, in which case (Inf, NA) is returned.

Use this function to answer the following questions.  Your specific numerical answer is not as important as the strategy you use to solve the problem.  Show your strategy.

1. If *y* is the first vowel in a word, what is the probability that it will occur in the third position, like the word *why*?
1. Which vowel is most likely to start a word?
1. Suppose a randomly selected word's first vowel is in the fourth position.  Which vowel is most likely to be first?
1. What is the probability that a randomly selected word does not have vowels (a,e,i,o,u, and sometimes y)?
1. Are first vowels more likely to be in an odd or even position?

### Submission instructions

1.  Within your course repo, create a folder called `HW10`
1.  Within the folder, create an .rmd script and and .md report with your solutions
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **show** your code to others.