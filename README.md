# Computational Probability, Spring 2024

## Overview

This course is all about variation, uncertainty, and randomness.  Students will learn the vocabulary of uncertainty and the mathematical and computational tools to understand and describe it.

## Instructor

[Thomas Stewart](https://tgstewart.xyz)  
Elson Building, 400 Brandon Ave, Room 156  
thomas.stewart@virginia.edu  
Github: thomasgstewart

## Teaching assistants

Ethan Nelson  
Graduate student in Data Science  
ean8fr@virginia.edu  
Github: eanelson01  

## Instruction & Office hours

**Format of the class:** In-class time will be a combination of lectures, group assignments, live coding, and student presentations.  **Please note:** Circumstances may require the face-to-face portion of the class to be online.

**Time:** MWF, 10 - 10:50am, Dell 1 Room 105  

**Instructor Office Hours:**  MW, 11am, Dell 1 Commons (The instructor will leave if there are no questions after 15 minutes.)  

**TA Office Hours:**  Thursdays, 1pm, Dell 1 Commons  

## Textbooks 

The following textbooks are freely available online via the UVA library.

[Understanding uncertainty](https://ebookcentral.proquest.com/lib/uva/reader.action?docID=1574353)
by Dennis V. Lindley  

[Understanding Probability, 3rd edition](https://ebookcentral.proquest.com/lib/uva/reader.action?docID=944763)  
by Henk Tijms  

[Introduction to Probability: Models and Applications](https://onlinelibrary.wiley.com/doi/book/10.1002/9781119549345)  
by N. Balakrishnan, Markos V. Koutras, Konstadinos G. Politis  

The following textbooks may also be helpful.

Probability and Statistics for Data Science  
by Norman Matloff  

Introduction to Probability Models  
by Sheldon M. Ross 

## Computing

The course will be taught using R.

## Big ideas & Learning Outcomes

The following are the four ideas that I hope will persist with students after the minutia of the Poisson distribution has faded from memory.  Expand each section to see the associated learning outcomes and topics.

<details>
<summary>Probability is a framework for organizing beliefs; it is not a statement of what your beliefs should be.</summary>

| Learning outcomes | Topics |
|:------|:---|
| compare and contrast different definitions of probability, illustrating differences with simple examples | <ul><li>long-run proportion<li>personal beliefs<li>combination of beliefs and data |
| express the rules of probability verbally, mathematically, and computationally| <ul><li>AND, OR, complement, total probability<li>simulation error (relative and absolute) |
| illustrate the rules of probability with examples| |
| using long-run proportion definition of probability, derive the univariate rules of probability| |
| organize/express bivariate random variables in cross tables| |
| define joint, conditional, and marginal probabilities| |
| identify joint, conditional, and marginal probabilities in cross tables| |
| identify when a research question calls for a joint, conditional, or marginal probability| |
| describe the connection between conditional probabilities and prediction| |
| derive Bayes rule from cross tables| |
| apply Bayes rules to answer research questions| |
| determine if joint outcomes are independent| |
| calculate a measure of association between joint outcomes| |
| apply cross table framework to the special case of binary outcomes| <ul><li>Sensitivity<li>Specificity<li>Positive predictive value<li>Negative predictive value<li>Prevalence<li>Incidence |
| define/describe confounding variables | <ul><li>Simpson's paradox<li>DAGs<li>causal pathway |
| list approaches for avoiding confounding | <ul><li>stratification<li>randomization |
</details>

<details>
<summary>Probability models are a powerful framework for describing and simplifying real world phenomena as a means of answering research questions.</summary>

| Learning outcomes | Topics |
|:------|:---|
| list various data types| |
| match each data type with probability models that may describe it| <ul><li>Bernoulli<li>binomial<li>negative binomial<li>Poisson<li>Gaussian<li>gamma<li>mixture  |
| discuss the degree to which models describe the underlying data | |
| tease apart model fit and model utility| |
| express probability models both mathematically, computationally, and graphically| <ul><li>PMF/PDF<li>CMF/CDF<li>quantile function<li>histogram/eCDF |
| employ probability models (computationally and analytically) to answer research questions| |
| explain and implement different approaches for fitting probability models from data| <ul><li> Tuning <li>Method of Moments<li>Maximum likelihood<li>Bayesian posterior<li>kernel density estimation|
|visualize the uncertainty inherent in fitting probability models from data| <ul><li>sampling distribution<li>posterior distribution<li>bootstrap distribution |
| explore how to communicate uncertainty when constructing models and answering research questions| <ul><li>confidence intervals<li>support intervals<li>credible intervals<li>bootstrap intervals|
| propagate uncertainty in simulations | |
| explore the trade-offs of model complexity and generalizability| |
</details>

<details>
<summary>Probability is a framework for coherently updating beliefs based on new information and data.</summary>

| Learning outcomes | Topics |
|:------|:---|
| select prior distributions which reflect personal belief | <ul><li>informative vs weakly informative priors|
| implement bayesian updating | |
| manipulate the posterior distribution to answer research questions | |

</details>

<details>
<summary>Probability models can be expressed and applied mathematically and computationally.</summary>

| Learning outcomes | Topics |
|:------|:---|
| use probability models to build simulations of complex real world processes to answer research questions | |

</details>

## Grading

Courses carrying a Data Science subject area use the following grading system: A, A-; B+, B, B-; C+, C, C-; D+, D, D-; F.  The symbol W is used when a student officially drops a course before its completion or if the student withdraws from an academic program of the University.

Grading Scale: 

 - 93-100 A
 - 90-92 A- 
 - 87-89 B+
 - 83-86 B 
 - 80-82 B- 
 - 77-79 C+ 
 - 73-76 C 
 - 70-72 C- 
 - <70 F

Grades will be a weighted average of the final exam score (30%), the midterm exams (each 15%), the deliverables (20%) and homeworks (20%).
 
Individual homeworks are graded with a score of 0, 1, or 2.  After the initial grading, students may resubmit homework within one week of feedback for an additional point.  That is, an initial score of 1 can be bumped up to a 2.  Likewise, a 0 can be bumped up to a 1.

Deliverables are larger assignments than homework.  To complete the deliverables, you will use probability models to build simulations of complex real world processes to answer questions.  Deliverables are graded like homeworks, including the opportunity to resubmit for an additional point.

Midterm exams are graded on a 100 point scale.  For midterm 1, if your grade on midterm 2 or the final is higher, the higher score will replace the score for midterm 1.  Likewise, for midterm 2, if your grade on the final exam is higher, the higher score will replace the score for midterm 2.  For example, suppose your exams scores for the midterms and final were 72, 88, 85.  For the purposes of the final grade, your exam scores would be 88, 88, 85.
 
The final exam is Thursday, May 9 at 9:00am, as assigned by the university.  Approximately one week prior to the exam, the instructor will provide a set of questions for which students will prepare solutions and written explanations. During the final exam period, the instructor will provide a supplementary set of questions related first. For example, the instructor may ask:

* Please explain how you solved a particular question in the initial set.
* Please solve a new question (perhaps closely related to a question in the initial set).  
* Please explain course topic X.  

Students will be graded on both the accuracy of their responses and the clarity with which they explain course concepts and solutions to questions. 

## 2024 Calendar

Homeworks, deliverables, reading assignments, and exams will be posted on the course calendar below.

<!-- <details><summary>Reading</summary></details> -->
| Mon | Tue | Wed | Thu | Fri |
|:---|:---|:---|:---|:---|
| Jan<br>&nbsp; | | 17<br>[Survey/Github setup](https://link.tgstewart.xyz/survey) | | 19<br><details><summary>Reading</summary>[Get started guide](https://rmarkdown.rstudio.com/lesson-1.html)</details>[Intro R](https://tgstewart.cloud/into-r.pptx) |
| 22<br><details><summary>Reading</summary>[Intro Markdown](https://markdownguide.offshoot.io/getting-started/)<br>[Markdown Cheatsheet](https://www.markdownguide.org/cheat-sheet)</details>| | 24<br>[Tools](https://tgstewart.cloud/tools.pptx)<br>[Reproducable Reports](http://tgstewart.xyz/reproducible-research-tools/) | | 26<br>DUE: [HW1](https://github.com/UVADS/DS-2006/blob/main/assignments/hw1-euler-problems.md)<br><details><summary>Reading</summary>(optional) First 5 videos of [Learn R Programming](https://www.youtube.com/playlist?list=PLjgj6kdf_snYBkIsWQYcYtUZiDpam7ygg)<br>(optional) [Intro to VS Code](https://www.youtube.com/watch?v=B-s71n0dHUk)<br>(optional) [Using Git with Visual Studio Code](https://www.youtube.com/watch?v=i_23KUAEtUM) Note that you have already cloned your repo locally, whereas the video creates a fresh repo. </details> |
| 29<br>DUE: [HW2](https://github.com/UVADS/DS-2006/blob/main/assignments/hw2-euler-problems-rmarkdown.md)<br>[Rstudio on Rivanna](https://tgstewart.cloud/rivanna-rstudio.pptx) | | 31<br>&nbsp; | Feb<br>&nbsp; | 2<br>DUE: [HW3](https://github.com/UVADS/DS-2006/blob/main/assignments/hw3-r-practice.md)<br><details><summary>Reading</summary>[Understanding uncertainty](https://ebookcentral.proquest.com/lib/uva/reader.action?docID=1574353), CH 1</details> |
| 5<br>DUE: [HW4](https://github.com/UVADS/DS-2006/blob/main/assignments/hw4-uncertainty.md) | | 7<br>DUE: [HW5](https://github.com/UVADS/DS-2006/blob/main/assignments/hw5-calculus-of-belief.md) <br> DUE: [HW1](https://github.com/UVADS/DS-2006/blob/main/assignments/hw1-euler-problems.md) Resubmission <br>[Operating Characteristics](https://tgstewart.cloud/01-probability-definition-slides.html)<br> | | 9<br>DUE: [HW6](https://github.com/UVADS/DS-2006/blob/main/assignments/hw6-birthday-problem.md)<br>DUE: [HW2](https://github.com/UVADS/DS-2006/blob/main/assignments/hw2-euler-problems-rmarkdown.md) Resubmission |
| 12<br>DUE: [HW7](https://github.com/UVADS/DS-2006/blob/main/assignments/hw7-two-events.md)<br> DUE: [HW3](https://github.com/UVADS/DS-2006/blob/main/assignments/hw3-r-practice.md) Resubmission <br>[Rules of prob 1](https://tgstewart.cloud/04-probability-bayes-rule.pdf)<br>[Rules of prob 2](https://tgstewart.cloud/04-more-bayes.pdf)  | | 14<br>Exam review<br>[Prep questions](https://tgstewart.cloud/midterm1-prep.html)<br>DUE: [HW8](https://github.com/UVADS/DS-2006/blob/main/assignments/hw8-independence.md) | | 16<br><details><summary>Exam</summary>You will be given a set of prep questions on Feb 14.  Generate solutions to the prep questions prior to the in-class exam.  During the exam, you will be given a test questions similar to the prep questions.  You will be able to copy and paste and tweak your solutions to the prep questions to solve the exam questions. </details>DUE: [HW4](https://github.com/UVADS/DS-2006/blob/main/assignments/hw4-uncertainty.md) Resubmission  |
| 19<br>Read/Watch [Deliverable 1](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable1-roulette.md)<br>DUE: [HW5](https://github.com/UVADS/DS-2006/blob/main/assignments/hw5-calculus-of-belief.md) Resubmission | | 21<br>Work on  [Deliverable 1](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable1-roulette.md) | | 23<br>DUE [Deliverable 1](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable1-roulette.md)<br>[HW6](https://github.com/UVADS/DS-2006/blob/main/assignments/hw6-birthday-problem.md) Resubmission |
| 26<br>&nbsp; | | 28<br>DUE: [HW9](https://github.com/UVADS/DS-2006/blob/main/assignments/hw9-basic-rules.md) | | Mar<br>DUE: [HW10](https://github.com/UVADS/DS-2006/blob/main/assignments/hw10-bayes-rule.md)<br>[Diagnostics](https://tgstewart.cloud/diagnostics.pptx) |
| 4<br>Spring break | | 6<br>Spring break | | 8<br>Spring break |
| 11<br>In class: [Deliverable 2](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable2-simulation-error.md) | | 13<br>&nbsp; | 14<br>DUE: [Deliverable 2](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable2-simulation-error.md) | 15<br>&nbsp; |
| 18<br>[Data types](https://tgstewart.cloud/01-data-types.pptx)<br>DUE: [HW11](https://github.com/UVADS/DS-2006/blob/main/assignments/hw11-diagnostic-odds.md)<br> DUE: [HW 7 Resubmission](https://github.com/UVADS/DS-2006/blob/main/assignments/hw7-two-events.md) | | 20<br> DUE: [HW 8 Resubmission](https://github.com/UVADS/DS-2006/blob/main/assignments/hw8-independence.md) | | 22<br>[HW 12](https://github.com/UVADS/DS-2006/blob/main/assignments/hw12-data-types.md)&nbsp; |
| 25<br>[HW 13](https://github.com/UVADS/DS-2006/blob/main/assignments/hw13-confounding-and-randomization.md) | | 27<br>Exam review<br>[Prep questions](https://tgstewart.cloud/midterm2-prep.pdf) | | 29<br><details><summary>Exam</summary>You will be given a set of prep questions on Mar 27.  Generate solutions to the prep questions prior to the in-class exam.  During the exam, you will be given a test questions similar to the prep questions.  You will be able to copy and paste and tweak your solutions to the prep questions to solve the exam questions. </details> |
| Apr<br>[In class code (Prob tom)](https://tgstewart.cloud/prob-tom.R)<br>[Bernoulli (Binomial)](https://tgstewart.cloud/05-binomial-prob.html)<br>[Hands/Sequences](https://tgstewart.cloud/hands-and-sequences.pptx) | | 3<br>&nbsp; | | 5<br>[Bernoulli sequences](https://tgstewart.cloud/bernoulli-sequences.pptx) |
| 8<br> DUE: [HW 12 Resubmission](https://github.com/UVADS/DS-2006/blob/main/assignments/hw12-data-types.md)| | 10<br>DUE: [Deliverable 1 Resubmission](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable1-roulette.md) <br>&nbsp; | | 12<br> DUE: [HW 14](https://github.com/UVADS/DS-2006/blob/main/assignments/hw14-world-series-distribution.md)&nbsp; |
| 15<br> DUE: [HW 11 Resubmission](https://github.com/UVADS/DS-2006/blob/main/assignments/hw11-diagnostic-odds.md) | | 17<br> &nbsp; | | 19<br>DUE: [HW 15](https://github.com/UVADS/DS-2006/blob/main/assignments/hw15-binomial-negbinomial-practice-problems.md)&nbsp; |
| 22<br> DUE: [Deliverable 2 Resubmission](https://github.com/UVADS/DS-2006/blob/main/deliverables/deliverable2-simulation-error.md) | | 24<br>&nbsp; | | 26<br>[KDE](https://tgstewart.cloud/cdf-pdf-kernels.html)<br>[KDE part 2](https://tgstewart.cloud/cdf-pdf-kernels-part2.html)&nbsp; |
| 29<br>Last class<br>[Exam review](https://tgstewart.cloud/final-exam-prep.html) <br> | | May<br> DUE: [HW 13 Resubmission](https://github.com/UVADS/DS-2006/blob/main/assignments/hw13-confounding-and-randomization.md) <br> DUE: [HW 14 Resubmission](https://github.com/UVADS/DS-2006/blob/main/assignments/hw14-world-series-distribution.md) | | 3<br>&nbsp; |
| 6<br>&nbsp; | | 8<br>&nbsp;  | 9<br>Final exam<br>9:00am - 12:00pm|  |

<!-- 
## Jan 19
* Any questions about syllabus
* Remind about reading assignment
* Introduction to R (slides)
    * What other languages are you aware of?
    * What new languages are on the horizon?
    * Data scientists will need to learn new languages in the future ... be open to new tools.
    * slides
    * small group work (10 min)
    * talk about solutions

## Jan 22
* Any questions about the syllabus?
* Remind about reading assignment
* Introduction to Markdown (reading)
    * small group work (format a document)
* How to push/pull in Github
* Github issues
* Submit HW1

## Jan 24
* 


## Feb 7
* Review HW that is due
* Operating Characteristic slides
    * Birthday problem
        * Guesses about prob of shared birthday in class
        * Solution in english with stuff around the home
            * What assumptions did we make?
        * R solution

## Feb 16
* Exam

## Feb 19
* Review exam

## Feb 21
* Roulette
        



| Date | Topics | Reading | Assignment |
|---:|:---|:---|:---|
| Jan 22| Syllabus, [Survey/Github setup](https://link.tgstewart.xyz/survey) | | |
| 26 | Introduction to R, Rmarkdown, Rivanna, Github | [Get started guide](https://rmarkdown.rstudio.com/lesson-1.html) | [HW 00: Rmarkdown](https://github.com/UVADS/DS-2006/blob/main/assignments/00-rmarkdown.md) |
| 29 | Uncertainty | UU Chapter 1 | [HW 01: Uncertainty](https://github.com/UVADS/DS-2006/blob/main/assignments/01-uncertainty.md) |
| 31 | | | |
| Feb 2 | | | |
| 5 | | | |
| 7 | | | |
| 9 | | | |
| 12 | | | |
| 14 | Exam review | | |
| 16 | Exam | | |
| 19 | | | |
| 21 | | | |
| 23 | | | |
| 26 | | | |
| 28 | | | |
| Mar 1 | | | |
| 4 | | | |
| 6 | | | |
| 8 | | | |
| 11 | | | |
| 13 | | | |
| 15 | | | |
| 18 | | | |
| 20 | | | |
| 22 | | | |
| 25 | | | |
| 27 | Exam | | |
| 29 | Exam review | | |
| Apr 1 | | | |
| 3 | | | |
| 5 | | | |
| 8 | | | |
| 10 | | | |
| 12 | | | |
| 15 | | | |
| 17 | | | |
| 19 | | | |
| 22 | | | |
| 24 | | | |
| 26 | | | |
| 29 | Final exam review  | ||
| May 9 | Final exam | | |
 | | -->

## Adjustments

The instructor may alter the course content and grading policies during the semester.

## Collaborative learning

Students are encouraged to study together.  The instructions for each assignment/deliverable will indicate if and how students may work together.  Students should not collaborate on midterm or final exams.  Students that violate the collaborative-work policy on an assignment, deliverable, or exam will receive a score of 0 on the assignment, deliverable, or exam.  Students may be referred to UVA Honor Committee.

**University of Virginia Honor System.** All work should be pledged in the spirit of the Honor System at the University of Virginia.  The following pledge should be written out at the end of all quizzes, examinations, individual assignments, and papers:  “I pledge that I have neither given nor received help on this examination (quiz, assignment, etc.)”.  The pledge must be signed by the student. For more information, visit www.virginia.edu/honor.

## Accommodations

UVA is committed to creating a learning environment that meets the needs of its diverse student body. If you anticipate or experience any barriers to learning in this course, please feel welcome to discuss your concerns with me. If you have a disability, or think you may have a disability, you may also want to meet with the Student Disability Access Center (SDAC), to request an official accommodation. You can find more information about SDAC, including how to apply online, through their website at www.studenthealth.virginia.edu/SDAC. If you have already been approved for accommodations through SDAC, please make sure to send me your accommodation letter and meet with me so we can develop an implementation plan together.