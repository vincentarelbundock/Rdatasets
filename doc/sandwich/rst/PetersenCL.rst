.. container::

   ========== ===============
   PetersenCL R Documentation
   ========== ===============

   .. rubric:: Petersen's Simulated Data for Assessing Clustered
      Standard Errors
      :name: petersens-simulated-data-for-assessing-clustered-standard-errors

   .. rubric:: Description
      :name: description

   Artificial balanced panel data set from Petersen (2009) for
   illustrating and benchmarking clustered standard errors.

   .. rubric:: Usage
      :name: usage

   ::

      data("PetersenCL")

   .. rubric:: Format
      :name: format

   A data frame containing 5000 observations on 4 variables.

   firm
      integer. Firm identifier (500 firms).

   year
      integer. Time variable (10 years per firm).

   x
      numeric. Independent regressor variable.

   y
      numeric. Dependent response variable.

   .. rubric:: Details
      :name: details

   This simulated data set was created to illustrate and benchmark
   clustered standard errors. The residual and the regressor variable
   both contain a firm effect, but no year effect. Thus, standard errors
   clustered by firm are different from the OLS standard errors and
   similarly double-clustered standard errors (by firm and year) are
   different from the standard errors clustered by year.

   .. rubric:: Source
      :name: source

   https://www.kellogg.northwestern.edu/faculty/petersen/htm/papers/se/test_data.htm

   .. rubric:: References
      :name: references

   Petersen MA (2009). “Estimating Standard Errors in Finance Panel Data
   Sets: Comparing Approaches”, *The Review of Financial Studies*,
   **22**\ (1), 435–480. doi:
   `10.1093/rfs/hhn053 <https://doi.org/10.1093/rfs/hhn053>`__
