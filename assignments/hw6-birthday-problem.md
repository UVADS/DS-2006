HW: Birthday problem
========

1. Using simulation, create a script that will solve the following riddle.  (The code we developed in class is below).
> In a class of 55 individuals, what is the probability that at least two individuals will share a birthday.
2. What does `set.seed` do in the script?
2. What does `R` represent?
2. Does the solution make any assumptions or simplifications?  If so, what are they?
2. Run both versions of the script.  For version 1, use a class size of 28.  Do both versions give the same answer?
2. Add vertical and horizontal lines to the plot generated in version 2 which show your estimated probability generated with version 1 code.
2. Look at the `first_duplicate` function.  What does the function return?  Use `?which` and `?min` to read the documentation of what these commands do.  (Answer: It returns the first instance of _____.)

## Version 1 of code

```
generate_class <- function(class_size){
  ???
  ???
}

check_birthday <- function(class){
  ???
  ???
}

set.seed(230583)
R <- 10000
replicates <- replicate(R, ???)
mean(replicates)
```

## Version 2 of code

```
first_duplicate <- function(){
    sample(1:365, 366, replace=TRUE) |>
    duplicated() |>
    which() |>
    min()
}

fd1 <- replicate(R, first_duplicate())
plot(ecdf(fd1), main = "Probability of shared birthday", xlab = "Class size")
```

### Submission instructions

1.  Within your course repo, create a folder called `06-birthday-problem`
1.  Within the folder, create an .rmd script file and generate an .md report
1.  Be prepared to share your solution with the class when the deliverable is due
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **share** code or text.