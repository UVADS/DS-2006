HW: R practice
========

In this assignment, you will practice some basic operations in R. Create an .rmd script file called `hw3.rmd`.  After completing the report, you will render a markdown report.

1. Working Directory

* What is the working directory?
* What are the best practices for setting and using the working directory?

2. Create a string called `name` which stores your name.

3. Run the `ls()` command to see the objects in the environment.

4. Create vectors of length 5 with the following atoms.  Call them v1, v2, ..., v4.

* logicals
* integers
* doubles
* characters

5. Place the vectors v1 ... v4 into a list called V.

6. Use `str` to inspect `v`

7. Create a matrix of size 4 x 5 of numeric values.

8. Create a sequence from 22 to 44 using the `seq` command.

9. Create an array with `cbind`

10. Grab the 3rd element of the vector `v3`

11. Use the following data frame, `d1`, and grab the 4th column.

```
d1 <- read.csv("http://hbiostat.org/data/repo/2.20.Framingham.csv")
```

12. Use `d1` and grab the 5th row.

13. Use `d1` and grab the `bmi` column.

14. Run the following code chunk.  Explain what the pipe operator does.

```
# Old way
sum(log(sqrt(select(d1,age)),base=10))

# OG magrittr pipe
require(magrittr)
d1 %>% 
  pull(age)  %>% 
  sqrt  %>% 
  log(base=10)  %>% 
  sum

d1 %>% 
  lm(sbp ~ dbp, data = .)  # Use the dot if the piped objects needs to go to an input other than the first

d1 %>% 
  split(.$sex2) %>%  # Can use the input multiple times
  lapply(function(x){x$age %>% mean})

# New base R pipe
d1 |> 
  pull(age) |> 
  sqrt() |> # Note the parentheses have to be used
  log(base=10) |> 
  sum()

d1 |>  
  lm(sbp ~ dbp, data = _) # Use `_` instead of `.` with new pipe
```

### Submission instructions

1.  In your repository, create a folder called `HW3`. 
1.  Make sure the `rmd` script and the `md` report are in the folder.
1.  Sync your local and online repositories.  (Push the local repo to Github.com.)