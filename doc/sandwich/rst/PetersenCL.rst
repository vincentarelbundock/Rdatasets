========== ===============
PetersenCL R Documentation
========== ===============

Petersen's Simulated Data for Assessing Clustered Standard Errors
-----------------------------------------------------------------

Description
~~~~~~~~~~~

Artificial balanced panel data set from Petersen (2009) for illustrating
and benchmarking clustered standard errors.

Usage
~~~~~

::

   data("PetersenCL")

Format
~~~~~~

A data frame containing 5000 observations on 4 variables.

firm
   integer. Firm identifier (500 firms).

year
   integer. Time variable (10 years per firm).

x
   numeric. Independent regressor variable.

y
   numeric. Dependent response variable.

Details
~~~~~~~

This simulated data set was created to illustrate and benchmark
clustered standard errors. The residual and the regressor variable both
contain a firm effect, but no year effect. Thus, standard errors
clustered by firm are different from the OLS standard errors and
similarly double-clustered standard errors (by firm and year) are
different from the standard errors clustered by year.

Source
~~~~~~

http://www.kellogg.northwestern.edu/faculty/petersen/htm/papers/se/test_data.htm

References
~~~~~~~~~~

Petersen MA (2009). “Estimating Standard Errors in Finance Panel Data
Sets: Comparing Approaches”, *The Review of Financial Studies*,
**22**\ (1), 435–480. doi:
`10.1093/rfs/hhn053 <http://doi.org/10.1093/rfs/hhn053>`__
