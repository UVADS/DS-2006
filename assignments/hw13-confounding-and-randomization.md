# Confounding and randomization

Please read sections 8.1 to 8.9 of Understanding Uncertainty.

1. In section 8.2, the author presented an example in which treatment allocation was confounded with sex.  Create the contingency table for treatment and recovery that would have resulted had treatment allocation been balanced among gender groups.  Your contingency table need not report counts; you may simply report proportions/probabilities.  As the conditional row probabilities, $P(R|T)$ and $P(R|T^c)$, are the primary quantities of interest, add the conditional row probabilities to the table.

2. In the trial example, men and women were equally likely to participate.  How would the table change if women were twice as likely than men to join the trial?  Create the resulting contingency table.

3. The treatment effect may be calculated on the relative scale or the absolute scale.  Which of these quantities is absolute and which is relative?  Why?

$$
\Delta = P(R|T)-(R|T^c) \quad \rho = \frac{P(R|T)}{P(R|T^c)}
$$

4. Calculate both $\Delta$ and $\rho$ for the tables created in 1 and 2.  Which summary measure is the same and which differs as the ratio of men to women changes?  Can you show this generally?  (Let $\alpha$ be the proportion of women.  Derive an expression for $\Delta$ and $\rho$.)

5. In section 8.6, the author compares a medical trial to an agricultural trial.  Summarize why the conclusions of the trials were different, even though the data were exactly the same.

6. Consider the figure below, which describes the medical trial.  Create a figure that represents the agricultural trial, using the terms variety, yield, and height.

![](../assets/confounding.svg)

7. Suppose that you were tasked with creating a randomization table for a trial.  The investigators are concerned that outcomes differ by diabetes status.  Create randomization tables using R which accounts for diabetes status.  Suppose the total number of trial participants is 100, of which 25 will have diabetes.


### Submission instructions

1.  Within your course repo, create a folder called `HW13`
1.  Within the folder, create an .rmd script and and .md report with your solutions.
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **show** your code to others.
