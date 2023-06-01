.. container::

   =============== ===============
   FoodExpenditure R Documentation
   =============== ===============

   .. rubric:: Proportion of Household Income Spent on Food
      :name: FoodExpenditure

   .. rubric:: Description
      :name: description

   Data on proportion of income spent on food for a random sample of 38
   households in a large US city.

   .. rubric:: Usage
      :name: usage

   ::

      data("FoodExpenditure")

   .. rubric:: Format
      :name: format

   A data frame containing 38 observations on 3 variables.

   food
      household expenditures for food.

   income
      household income.

   persons
      number of persons living in household.

   .. rubric:: Source
      :name: source

   Taken from Griffiths et al. (1993, Table 15.4).

   .. rubric:: References
      :name: references

   Cribari-Neto, F., and Zeileis, A. (2010). Beta Regression in R.
   *Journal of Statistical Software*, **34**\ (2), 1–24. doi:
   `10.18637/jss.v034.i02 <https://doi.org/10.18637/jss.v034.i02>`__

   Ferrari, S.L.P., and Cribari-Neto, F. (2004). Beta Regression for
   Modeling Rates and Proportions. *Journal of Applied Statistics*,
   **31**\ (7), 799–815.

   Griffiths, W.E., Hill, R.C., and Judge, G.G. (1993). *Learning and
   Practicing Econometrics* New York: John Wiley and Sons.

   .. rubric:: See Also
      :name: see-also

   ``betareg``

   .. rubric:: Examples
      :name: examples

   ::

      data("FoodExpenditure", package = "betareg")

      ## Ferrari and Cribari-Neto (2004)
      ## Section 4
      fe_lin <- lm(I(food/income) ~ income + persons, data = FoodExpenditure)
      library("lmtest")
      bptest(fe_lin)

      ## Table 2
      fe_beta <- betareg(I(food/income) ~ income + persons, data = FoodExpenditure)
      summary(fe_beta)
