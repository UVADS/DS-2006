Simpson's Paradox
========

Please read sections 8.1 to 8.3 of Understanding Uncertainty.

1. In section 8.2, the author presented an example in which treatment allocation was confounded with sex.  Create the contingency table for treatment and recovery that would have resulted had treatment allocation been balanced among gender groups.  Your contingency table need not report counts; you may simply report proportions/probabilities.  As the conditional row probabilities, $P(R|T)$ and $P(R|T^c)$, are the primary quantities of interest, add the conditional row probabilities to the table.

2. In the trial example, men and women were equally likely to participate.  How would the table change if women were twice as likely than men to join the trial?  Create the resulting contingency table.

3. The treatment effect may be calculated on the relative scale or the absolute scale.  Which of these quantities is absolute and which is relative?  Why?

$$
\Delta = P(R|T)-(R|T^c) \quad \rho = \frac{P(R|T)}{(R|T^c)}
$$

4. Calculate both $\Delta$ and $\rho$ for the tables created in 1 and 2.  Which summary measure is the same and which differs as the ratio of men to women changes?  Can you show this generally?  (Let $\alpha$ be the proportion of women.  Derive an expression for $\Delta$ and $\rho$.)

### Submission instructions

1.  Within your course repo, create a folder called `13-simpsons-paradox`
1.  Within the folder, create an .html or .md file with the name `writeup`
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **show** your code to others.