Simulation error
================

Simulation generates approximate answers; there is some degree of error
in a quantity estimated by Monte Carlo simulation. Intuitively, it seems
that the degree of error should get smaller as the number of simulation
replicates increases. In this assignment, you are going to investigate
the relationship between then number of replicates and simulation error.

Assignment
----------

In this assignment, you will write a blog post to demonstrate the
concepts of absolute error and relative error when estimating
probabilities from simulation. The audience of your blog post is an HR
manager tasked with hiring a data scientist. The HR manager is looking
for candidates that can take a data science concept and will

1.  Explain why the concept is important
2.  Introduce key vocabulary terms, and
3.  Demonstrate the concept in action

As part of the blog post, you will perform a 14 X 5 factorial experiment
simulation that estimates the error for each combination of replicate
number (2<sup>2</sup>, 2<sup>3</sup>, …, 2<sup>15</sup>) and probability
(0.01, 0.05, 0.10, 0.25, 0.50). Let *p̂* denote the probability estimated
from simulation, and let *p* denote the true underlying probability.
Calculate error as

absolute error = \|*p̂*−*p*\|

and

relative error = \|*p̂*−*p*\|/*p*.

Your results will look something like the following figures. You may
also want to generate the results with the y-axis is on the
log<sub>10</sub> scale.

![](../assets/absolute-error.svg)

![](../assets/relative-error.svg)

Help the reader understand and interpret the results.

### Submission instructions

1.  Within your class repo, create a
    folder called `Deliverable02`
1.  Within the folder, create an .rmd script file which generates an .md or .html report with the name `simulation-error`
1.  Be prepared to share your blog post with the class when the
    deliverable is due
1.  The deliverable should be your own work. You may **discuss**
    concepts with classmates, but you may **not share** code or text.

### Other instructions

1.  The deliverable should be your own work. You may **discuss**
    concepts with classmates, but you may **not share** code or text.
