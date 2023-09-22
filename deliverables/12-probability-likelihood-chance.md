Probability Likelihood Chance
========

Please read sections 7.4 to 7.8 of Understanding Uncertainty.

1. Consider a first-to-4-wins championship series, in which 2 teams play until one wins 4 games.  Suppose team A wins the championship.  The possible sequences of outcomes are, where A denotes a win from team A and B denotes a win from team B, <br><br>
BAAAA    
ABAAA  
AABAA  
AAABA<br><br>
If each of these series is equally likely, then we say the series is *exchangeable*.  That is, the ordering of wins and losses does not impact our probability assessment of the series.<br><br>*Home field advantage* is the idea that teams are more likely to win a game in their own stadium.  Suppose the championship series was played only at team A's stadium.  Would the series still be exchangeable?  Why or why not?

2. Continuing from the previous question, suppose the championship series was played alternating stadiums.  Would the series be exchangeable?  Why or why not?

|Game| 1| 2 | 3 | 4 | 5 |
|:---|:---:|:---:|:---:|:---:|:---:|
|**Stadium**| A | B | A | B | A |

3. Suppose the series were played either entirely in stadium A or stadium B, but the specific stadium is unknown.  Would the series be exchangeable?  Why or why not?

4. Again, suppose the series were played either entirely in stadium A or stadium B, but the specific stadium is unknown.  Let 
$$\theta_A = P(\text{A wins a game in stadium A})$$
$$\theta_B = P(\text{B wins a game in stadium B})$$
$$P(\theta_A) = P(\text{The series is played in stadium A})$$
Then, by Bayes rule,
$$P(\theta_i | \text{ Series outcome is } ABAAA\text{ }) = \frac{P(\text{Series outcome is } ABAAA\text{ }|\theta_i)P(\theta_i)}{P(\text{ Series outcome is } ABAAA\text{ })}$$
As defined by the author in chapter 7 (especially 7.8), identify the portions of the expression that represent the *probability*, *likelihood*, and *chance*?


### Submission instructions

1.  Within your course repo, create a folder called `12-probability-likelihood-chance`
1.  Within the folder, create an .html or .md file with the name `writeup`
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **show** your code to others.