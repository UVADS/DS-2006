Exchangeability
========

Please read sections 7.1 to 7.3 of Understanding Uncertainty.

1. Please define, in your own words, exchangeability.
2. Generate an example of a series that is not exchageable and one that is.
3. Consider the following table of joint, conditional, and marginal probabilities.  Suppose

$$ y = P(A|B) = P(B|A) $$
$$ P(B) = p$$

| | A | a | |
|:---|:---:|:---:|:---:|
|B | | | p |
| &nbsp;&nbsp;&nbsp; row | y | |  |
| &nbsp;&nbsp;&nbsp; col | y | | |
|b |   | | |
| &nbsp;&nbsp;&nbsp; row |   | | |
| &nbsp;&nbsp;&nbsp; col |   | | |
| | | | |

Can you complete the table (with symbols) with the information provided?  If so, complete it.  
Hint 1: Yes.  
Hint 2: Find $P(A)$ using the fact that $P(A|B) = P(B|A)$  
Hint 3: Find $P(a|B)$ using the complement rule.  
Hint 4: Find $P(b|A)$ using the complement rule.  
Hint 5: Find $P(AB)$.  
Hint 6: Find $P(Ab)$, $P(Ab)$, and $P(ab)$.
Hint 7: The remainder of the table should follow.

4. What must $y$ be if A and B are independent?
5. Choose values of $y$ and $p$ so that A and B are not independent.  (For example, y=0.6 and p=0.5)  Complete the table with numbers.  Your resulting table is an example of outcomes that are exchangeable ($P(A|B)=P(B|A)$) but not independent ($P(A|B)\neq P(A)$).

### Submission instructions

1.  Within your course repo, create a folder called `12-exchangeability`
1.  Within the folder, create an .html or .md file with the name `writeup`
1.  The deliverable should be your own work.  You may **discuss**
    concepts with classmates, and you may **show** your code to others.