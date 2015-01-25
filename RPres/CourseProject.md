Multivariate regression introduction
=====
transition:rotate
author: Vladimir Jovanovic
font-family: 'Risque'

Introduction
========================================================

- Bullet 1
- Bullet 2

***

- Bullet 3

Interactive control
========================================================



Regression showcase
========================================================
The application will use the variables the user selects to fit a linear model.<br>
For example, if a user checks the checkboxes next to Agriculture, Education and Catholic, the following code will be executed.

```r
lm(Fertility ~ Agriculture + Education + Catholic, swiss)
```

```

Call:
lm(formula = Fertility ~ Agriculture + Education + Catholic, 
    data = swiss)

Coefficients:
(Intercept)  Agriculture    Education     Catholic  
    86.2250      -0.2030      -1.0721       0.1452  
```

Correlation showcase
========================================================
When a user selects variables from the two drop-down lists, he will see the correlation between them.<br>
If a user selects Agriculture and Education, the following data (and plot) will be displayed:

```
[1] -0.6395225
```

![plot of chunk unnamed-chunk-3](CourseProject-figure/unnamed-chunk-3-1.png) 

