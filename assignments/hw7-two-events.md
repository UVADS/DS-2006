HW: Two Events
========

Please read sections 4.1 and 4.2 of Understanding Uncertainty.

Here is the data from the in-class survey about soft drinks which you will use in the following problems.

```
https://tgstewart.cloud/soda.csv
```

1. Create a table of counts and proportions for the `cola` variable.  Report counts with proportions in parentheses, for example `23 (0.39)`.  (This is what is meant by  `N (p)`.)

| Colas     |   Not Colas |
| --------- | ----------- |
|  N (p)    |    N (p)    |

2. Create a similar table for the sugar preference variable.

3. Use the data to generate a contingency table of counts and proportions.

|                   | Colas     |   Not Colas |
| ----------------- | --------- | ----------- |
| **Regular**       |  N (p)    |    N (p)    |
| **No sugar/Diet** | N (p)     |    N (p)    |

4. Add to the table conditional column and row proportions and counts. With sugar preferences on the rows, the conditional row proportions are $P(\text{Drink}|\text{Sugar})$.  Likewise, with drink preferences on the columns, conditional column proportions are $P(\text{Sugar}|\text{Drink})$.

5. Add marginal proportions and counts.  The final table will look something like this:

|                            | Colas       |   Not Colas  | Total |
| -------------------------- | ----------- | ------------ | ------|
| **Regular**                |  N (p)      |    N (p)     | N (p) |
| &nbsp;&nbsp;&nbsp; Row     |  N (p)      |    N (p)     |       |
| &nbsp;&nbsp;&nbsp; Col     |  N (p)      |    N (p)     |       |
| **No sugar/Diet**          |  N (p)      |    N (p)     | N (p) |
| &nbsp;&nbsp;&nbsp; Row     |  N (p)      |    N (p)     |       |
| &nbsp;&nbsp;&nbsp; Col     |  N (p)      |    N (p)     |       |
| Total                      |  N (p)      |    N (p)     | N (p) |


### Submission instructions

1.  Within your course repo, create a folder called `HW7`
1.  Within the folder, create an .md file with your solutions.  (If you use R for computation --- which is not required --- be sure to include the .rmd script with your code.)
1.  Be prepared to share your solution with the class when the deliverable is due
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **share** code or text.