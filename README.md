# Computational Probability, Fall 2023

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

**Time:** MWF, 9 - 9:50am, Dell 1 Room 105  

**Office Hours:**  MWF, 10am, Dell 1 Commons  

**TA Office Hours:**  Thursdays, 11am, Dell 1 Commons  

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

## Learning objectives

This course covers the fundamentals of probability theory and stochastic processes. The goal of the course is that students will become conversant in the tools of probability.  At the end of the course, students should be able to clearly describe and implement concepts related to random variables, properties of probability, distributions, expectations, moments, transformations, model fit, basic inference, sampling distributions, discrete and continuous time Markov chains, and Brownian motion.  The course will illustrate most topics with both analytic and computational solutions.

## Final Exam

The final exam will be a 20-30 minute one-on-one oral exam with the instructor recorded in Zoom. Prior to the exam, a set of practice questions will be provided, with the expectation that students will prepare for the oral exam by coding-up solutions and writing explanations. During the oral exam, the instructor will ask a series of questions covering topics from the course and the practice questions. For example, the instructor may ask:

* Please explain how you solved a particular question in the practice set.
* Please solve a new question (perhaps closely related to a question in the practice set).  
* Please explain course topic X.  

Students will be graded on both the accuracy of their responses and the clarity with which they explain course concepts and solutions to questions. The final exam will occur on 14 December 2023. Students will sign up for oral exam slots in early December.

## Reading Schedule

Each class will have an assigned reading.  Each reading is paired with a deliverable.  Please read the assigned material and make a good-faith effort on the deliverable before class.

| Symbol | Text |
|---|---|
| UU | Understanding Uncertainty |

| Class period | Material | Deliverable |
|---|---|---|
| Fri, 2023-09-01 | UU 4.1, 4.2 | 4 |
| Mon, 2023-09-04 | UU 4.3 to 4.7 | 5 | 
| Wed, 2023-09-06 | UU 5.1 to 5.5 | 6 |
| Fri, 2023-09-08 | UU 5.6 to 5.13 | 7 |
| Mon, 2023-09-11 | UU 6.1 to 6.4 | 8 |
| Wed, 2023-09-13 | UU 6.5 to 6.9 |  |
| Fri, 2023-09-15 | UU 6.10 to 6.12 |  |

## Deliverables and Problem sets

Some of the assignments will be traditional problem sets.  Others will be more substantial projects requiring you to perform a simulation and summarize findings in a blog format.  Each assignment will be graded on a pass/fail basis. Students will have opportunities to resubmit each assignment multiple times within a 2 week window after of initial feedback.

| Deliverable | First Submission Due Date | Resubmission Due Date |
|---|:---:|---|
| 0. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/00-getting-started.md">Getting started with Github (not graded)</a> | None |  |
| 1. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/01-examples-of-uncertainty.md">Uncertainty</a> | 2023-09-01 | |
| 2. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/02-calculus-of-belief.md">Calculus of belief</a> | 2023-09-01 | |
| 3. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/03-birthday-problem.md">Birthday problem</a> | 2023-09-04 | |
| 4. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/04-two-events.md">Two events</a> | 2023-09-06 | |
| 5. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/05-independence.md">Independence</a> | 2023-09-08 | |
| 6. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/06-basic-rule-of-probability.md">Basic rules</a> | 2023-09-11 | |
| 7. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/07-more-probability.md">More rules</a> | 2023-09-13 | |
| 8. <a class = "callink" href = "https://github.com/UVADS/DS-2006/blob/main/deliverables/08-bayes-rule.md">Bayes rule</a> | 2023-09-15 | |

## Schedule of Topics 

| Topic | Slides | Textbook sections | Whiteboards | Videos |
|---|:---:|:---:|---|---|
| Class logistics | | | | |
| **Overview** | | | | |
| **Definitions of Probability** |  | | | |
| **Intro to R** | <a class = "callink" href = "https://tgstewart.cloud/into-r.pptx"> Getting R</a> | | | |
|  → Markdown | <a href="https://www.markdownguide.org/cheat-sheet/">Cheatsheet</a> | | | |
|  → Rmarkdown | <a href="https://tgstewart.cloud/rmd-example.rmd">Example input</a><br><a href="https://tgstewart.cloud/rmd-example.html">Example output</a> | | | |
| **Simulation & Operating Characteristics** | | | | |
| **Basic Probability Ideas** | | | | |
|  → Belief vs Frequency vs Information  | | | | |
|  → Notebook / data.frame definition  |  | | | |
|  → And, Or  | | | | |
|  → Conditional Probability | | | | |
|  → Law of Total Probability | | | | |
|  → Bayes Rule | |  | | |
|  → Random variable | | | | |
| **Discrete Probability Models** | | | | |
| → Probability Mass Function | | | | |
| → Bernouli Random Variables | | | | |
| → Binomial Random Variables | | | | |
| → Negative Binomial Random Variables | | | | |
| → Poisson Random Variables | | | | |
| **Continuous Probability Models** | | | | |
| → Cumulative Distribution Function | | | | |
| → Probability Density Function | | | | |
| → Uniform Random Variables  | | | | |
| → Normal Random Variables  | | | | |
| → Exponential Random Variables  | | | | |
| → Gamma Random Variables  | | | | |
| → Beta Random Variables  | | | | |
| → Mixture Distributions  | | | | |
| **Expectation and Variance** | | | | |
| → Data Types | | | | |
| → Categorical, Ordinal, Interval, and Ratio Variables | | | | |
| → Covariance | | | | |
| **Transformations of individual observations** | | | | |
| **Transformations of samples** | | | | |
| → Min and Max | | | | |
| → Quantiles | | | | |
| → Order Statistics | | | | |
| → Sampling distributions | | | | |
| **Methods of Fitting Models** | | | | |
| → QQ-plot | | | | |
| → Method of moments | | | | |
| → Maximum likelihood | | | | |
| → Bayesian | | | | |
| → Kernel Density Estimation | | | | |
| **Sampling Distributions from Fitted Models** | | | | |
| → Bootstrap | | | | |
| → Simulation | | | | |
| → Central Limit Theorem | | | | |
| **Simulation** | | | | |
| → Parallel Computing | | | | |
| → Batch processing on the cloud| | | | |
| **Brief introduction to inference** | | | | |
| → Sampling and Inference | | | | |
| → Inference with CI | | | | |
| → Inference with Hypothsis testing | | | | |
| **Multivariate Normal Distribution** | | | | |
| → Properties | | | | |
| → Correlation | | | | |
| → Conditional Distribution | | | | |
| → Marginal Distribution | | | | |

## Grading

Grading Policies: Courses carrying a Data Science subject area use the following grading system: A, A-; B+, B, B-; C+, C, C-; D+, D, D-; F.  The symbol W is used when a student officially drops a course before its completion or if the student withdraws from an academic program of the University.

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

 Grades will be a weighted average of the final exam score (50%) and the deliverables score (50%).  As deliverables are graded on a pass/fail basis, the deliverable score will be the percentage of deliverables which earn a pass.  For example, a student that earns an 90 on the final and passes 8 of 10 deliverables will earn 90*.5 + 80*.5 = 85 which is a B.

## Adjustments

The instructor may alter the course content and grading policies during the semester.

## Collaborative learning

Students are encouraged to study together.  The instructions for each assignment will indicate if and how students may work together on the deliverable.  Students should not collaborate on the final exam.  Students that violate the collaborative-work policy on an assignment will fail the assignment in question and forfeit the opportunity to retake or resubmit.  Students that violate the collaborative-work policy on the final exam will fail all sections of the final exam and forfeit the opportunity to retake or resubmit.  Students may be referred to UVA Honor Committee.

University of Virginia Honor System: All work should be pledged in the spirit of the Honor System at the University of Virginia.  The following pledge should be written out at the end of all quizzes, examinations, individual assignments, and papers:  “I pledge that I have neither given nor received help on this examination (quiz, assignment, etc.)”.  The pledge must be signed by the student. For more information, visit www.virginia.edu/honor.

## Accomodations

UVA is committed to creating a learning environment that meets the needs of its diverse student body. If you anticipate or experience any barriers to learning in this course, please feel welcome to discuss your concerns with me. If you have a disability, or think you may have a disability, you may also want to meet with the Student Disability Access Center (SDAC), to request an official accommodation. You can find more information about SDAC, including how to apply online, through their website at www.studenthealth.virginia.edu/SDAC. If you have already been approved for accommodations through SDAC, please make sure to send me your accommodation letter and meet with me so we can develop an implementation plan together.