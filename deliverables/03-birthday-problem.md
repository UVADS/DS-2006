Birthday problem
========

1. Using simulation, create a script that will solve the following riddle.  (The code we developed in class is below):
> In a class of 11 individuals, what is the probability that at least two individuals will share a birthday.
2. What does `set.seed` do in the script?
2. What does `R` represent?
2. Run the script, including the "Additional code" section.  Calculate the shared birthday probability for class of 28.  Show the code that you used.
2. Add vertical and horizontal lines to the plot which show your estimated probability for a class of size 28.
2. Look at the `first_duplicate` function.  What does the function return?  Use `?which` and `?min` to read the documentation of what these commands do.  (Answer: It returns the first instance of _____.)  We'll talk more about the connection between `first_duplicate` and the birthday problem at a later date.

```
## Code from class
set.seed(1)

one_roster <- function(S = 11){
  birthdays <- sample(x = 365, size = S, replace = TRUE)
  any(duplicated(birthdays))
}

R <- 100000
out1 <- rep(NA, R)
for(i in 1:R){
  out1[i] <- one_roster()
}
mean(out1)

out2 <- replicate(R, one_roster())
mean(out2)

## Additional Code

first_duplicate <- function(){
  birthdays <- sample(x = 365, size = 366, replace = TRUE)
  min(which(duplicated(birthdays)))
}

out3 <- replicate(R, first_duplicate())
hist(out3, freq = FALSE)

plot(ecdf(out3), xlab = "Roster size", ylab = "Proability of shared birthday", main = "Proability of shared birthday by class size")
abline(h=mean(out2), v = 11)

```

### Submission instructions

1.  Within your course repo, create a folder called `03-birthday-problem`
1.  Within the folder, create an .html or .md file with the name `writeup`
1.  Be prepared to share your blog post with the class when the deliverable is due
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **share** code or text.