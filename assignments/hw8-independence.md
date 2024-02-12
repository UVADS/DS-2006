# HW: Independence

Please read sections 4.3 to 4.7 of Understanding Uncertainty.

Here is the data from the in-class survey about soft drinks which you
will use in the following problems.

    require(dplyr)
    require(pander)
    d1 <- read.csv("https://tgstewart.cloud/soda.csv") |>
      filter(!is.na(cola) & !is.na(sugar))
    descr::CrossTable(
          d1$sugar
        , d1$cola
        , prop.chisq = FALSE
    ) |>
    pander()

<table>
<caption>Table continues below</caption>
<colgroup>
<col style="width: 39%" />
<col style="width: 36%" />
<col style="width: 23%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;"> <br />
d1$sugar</th>
<th style="text-align: center;">d1$cola<br />
Cola (Coke, Pepsi, etc.)</th>
<th style="text-align: center;"> <br />
Something else</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;"><strong>Regular (full
sugar)</strong><br />
N<br />
Row(%)<br />
Column(%)<br />
Total(%)</td>
<td style="text-align: center;"> <br />
10<br />
25.0000%<br />
50.0000%<br />
15.1515%</td>
<td style="text-align: center;"> <br />
30<br />
75.0000%<br />
65.2174%<br />
45.4545%</td>
</tr>
<tr class="even">
<td style="text-align: center;"><strong>Zero sugar or
diet</strong><br />
N<br />
Row(%)<br />
Column(%)<br />
Total(%)</td>
<td style="text-align: center;"> <br />
10<br />
38.4615%<br />
50.0000%<br />
15.1515%</td>
<td style="text-align: center;"> <br />
16<br />
61.5385%<br />
34.7826%<br />
24.2424%</td>
</tr>
<tr class="odd">
<td style="text-align: center;">Total<br />
</td>
<td style="text-align: center;">20<br />
30.303%</td>
<td style="text-align: center;">46<br />
69.697%</td>
</tr>
</tbody>
</table>

Table continues below

<table style="width:19%;">
<colgroup>
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;"> <br />
Total</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;"> <br />
40<br />
60.6061%<br />
<br />
</td>
</tr>
<tr class="even">
<td style="text-align: center;"> <br />
26<br />
39.3939%<br />
<br />
</td>
</tr>
<tr class="odd">
<td style="text-align: center;">66<br />
</td>
</tr>
</tbody>
</table>

1.  If the proportions in the contingency table represented
    probabilities, would drink preference and sugar preference be
    independent?

2.  Is a preference for Cola positively or negatively or not associated
    with a preference for regular sugar?

3.  Consider the population of individuals who suffer from migraine
    headaches.

<table>
<thead>
<tr class="header">
<th></th>
<th>Fewer than 3 migraines per month</th>
<th>3 or more migraines per month</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Less toxic treatment</td>
<td>.4</td>
<td>.1</td>
</tr>
<tr class="even">
<td>More toxic treatment</td>
<td>.3</td>
<td>.2</td>
</tr>
</tbody>
</table>

What can you conclude from this data about the effectiveness of the more
toxic treatment? (Hint: Section 4.7)

### Submission instructions

1.  Within your course repo, create a folder called `HW05`
2.  Within the folder, create an .rmd script and .md report with your
    solutions.
3.  Be prepared to share your solutions with the class when the
    deliverable is due
4.  The deliverable should be your own work. You may **discuss**
    concepts with classmates, and you may **share** code or text.
