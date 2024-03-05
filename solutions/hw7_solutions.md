### 1. Create a table of counts and proportions for the cola variable. Report counts with proportions in parentheses, for example 23 (0.39). (This is what is meant by N (p).)

    survey_data <- read.csv('https://tgstewart.cloud/soda.csv')

    table(survey_data)

    ##                           sugar
    ## cola                       Regular (full sugar) Zero sugar or diet
    ##   Cola (Coke, Pepsi, etc.)                   10                 10
    ##   Something else                             30                 16

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Colas</th>
<th>No Colas</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>20 (<span class="math inline">$\frac{20}{66} =
0.\bar{30}$</span>)</td>
<td>46 (<span class="math inline">$\frac{46}{66} = 0.\bar{69}$</span>
)</td>
</tr>
</tbody>
</table>

### 2. Create a similar table for the sugar preference variable.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Regular</th>
<th>Zero Sugar</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>40 (<span class="math inline">$\frac{40}{66} =
0.\bar{60}$</span>)</td>
<td>26 (<span class="math inline">$\frac{26}{66} =
0.\bar{39}$</span>)</td>
</tr>
</tbody>
</table>

### 3. Use the data to generate a contingency table of counts and proportions.

<table>
<colgroup>
<col style="width: 26%" />
<col style="width: 36%" />
<col style="width: 36%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Colas</th>
<th>Not Colas</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Regular</td>
<td>10 (<span class="math inline">$\frac{10}{66} =
0.\bar{15}$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{66} =
0.\bar{45}$</span>)</td>
</tr>
<tr class="even">
<td>No Sugar</td>
<td>10 (<span class="math inline">$\frac{10}{66} =
0.\bar{15}$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{66} =
0.\bar{24}$</span>)</td>
</tr>
</tbody>
</table>

### 4. Add to the table conditional column and row proportions and counts. With sugar preferences on the rows, the conditional row proportions are P(Drink | Sugar). Likewise, with drink preferences on the columns, conditional column proportions are P(Sugar | Drink).

<table>
<colgroup>
<col style="width: 41%" />
<col style="width: 26%" />
<col style="width: 31%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Colas</th>
<th>Not Colas</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Regular</td>
<td>10 (<span class="math inline">$\frac{10}{66} =
0.\bar{15}$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{66} =
0.\bar{45}$</span>)</td>
</tr>
<tr class="even">
<td>    Row</td>
<td>10 (<span class="math inline">$\frac{10}{40} = 0.25$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{40} = .75$</span>)</td>
</tr>
<tr class="odd">
<td>    Col</td>
<td>10 (<span class="math inline">$\frac{10}{20} = 0.5$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{46} = 0.6521$</span>)</td>
</tr>
<tr class="even">
<td>No Sugar/Diet</td>
<td>10 (<span class="math inline">$\frac{10}{66} =
0.\bar{15}$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{66} =
0.\bar{24}$</span>)</td>
</tr>
<tr class="odd">
<td>    Row</td>
<td>10 (<span class="math inline">$\frac{10}{26} = 0.3846$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{26} = 0.6154$</span>)</td>
</tr>
<tr class="even">
<td>    Col</td>
<td>10 (<span class="math inline">$\frac{10}{20} = 0.5$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{46} = 0.3478$</span>)</td>
</tr>
</tbody>
</table>

### 5. Add marginal proportions and counts.

<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 22%" />
<col style="width: 22%" />
<col style="width: 22%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Colas</th>
<th>Not Colas</th>
<th>Total</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Regular</td>
<td>10 (<span class="math inline">$\frac{10}{66} =
0.\bar{15}$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{66} =
0.\bar{45}$</span>)</td>
<td>40 (<span class="math inline">$\frac{40}{66} =
0.\bar{60}$</span>)</td>
</tr>
<tr class="even">
<td>    Row</td>
<td>10 (<span class="math inline">$\frac{10}{40} = 0.25$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{40} = .75$</span>)</td>
<td></td>
</tr>
<tr class="odd">
<td>    Col</td>
<td>10 (<span class="math inline">$\frac{10}{20} = 0.5$</span>)</td>
<td>30 (<span class="math inline">$\frac{30}{46} = 0.6521$</span>)</td>
<td></td>
</tr>
<tr class="even">
<td>No Sugar/Diet</td>
<td>10 (<span class="math inline">$\frac{10}{66} =
0.\bar{15}$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{66} =
0.\bar{24}$</span>)</td>
<td>26 (<span class="math inline">$\frac{26}{66} =
0.\bar{39}$</span>)</td>
</tr>
<tr class="odd">
<td>    Row</td>
<td>10 (<span class="math inline">$\frac{10}{26} = 0.3846$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{26} = 0.6154$</span>)</td>
<td></td>
</tr>
<tr class="even">
<td>    Col</td>
<td>10 (<span class="math inline">$\frac{10}{20} = 0.5$</span>)</td>
<td>16 (<span class="math inline">$\frac{16}{46} = 0.3478$</span>)</td>
<td></td>
</tr>
<tr class="odd">
<td>Total</td>
<td>20 (<span class="math inline">$\frac{20}{66} =
0.\bar{30}$</span>)</td>
<td>46 (<span class="math inline">$\frac{46}{66} =
0.\bar{69}$</span>)</td>
<td>66 (1)</td>
</tr>
</tbody>
</table>
