Estimating the weight distribution with method of moments
====================================================

Refer to the slides related to method of moment estimation: [(link, slides 9 to 21)](https://tgstewart.cloud/15-fitting-continuous-models-mle.html)

Using the distributional family of your choice, use method of moments to estimate the adult male distribution of weight using the `Hmisc::getHdata(nhgh)` dataset.

```
Hmisc::getHdata(nhgh)
require(dplyr)
weight <- nhgh %>% 
  filter(age >= 18) %>% 
  filter(sex == "male")
```

Overlay your estimated distribution over the eCDF and histogram.  (This will be two plots.)

### Submission instructions

1.  Within the class repo, create a
    folder called `24-adult-male-weight-mm`
2.  Within the folder, create an .html for your solutions
3.  Within the folder, include code scripts or .rmd or some other
    document that will successfully generate the output of the solutions when executed from within the folder. (Do not use
    absolute file paths.)
4.  Be prepared to share your solutions with the class when the
    deliverable is due.