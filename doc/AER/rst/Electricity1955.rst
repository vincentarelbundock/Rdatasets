.. container::

   =============== ===============
   Electricity1955 R Documentation
   =============== ===============

   .. rubric:: Cost Function of Electricity Producers (1955, Nerlove
      Data)
      :name: cost-function-of-electricity-producers-1955-nerlove-data

   .. rubric:: Description
      :name: description

   Cost function data for 145 (+14) US electricity producers in 1955.

   .. rubric:: Usage
      :name: usage

   ::

      data("Electricity1955")

   .. rubric:: Format
      :name: format

   A data frame containing 159 observations on 8 variables.

   cost
      total cost.

   output
      total output.

   labor
      wage rate.

   laborshare
      cost share for labor.

   capital
      capital price index.

   capitalshare
      cost share for capital.

   fuel
      fuel price.

   fuelshare
      cost share for fuel.

   .. rubric:: Details
      :name: details

   The data contains several extra observations that are aggregates of
   commonly owned firms. Only the first 145 observations should be used
   for analysis.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003). Table F14.2.

   http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Nerlove, M. (1963) “Returns to Scale in Electricity Supply.” In C.
   Christ (ed.), *Measurement in Economics: Studies in Mathematical
   Economics and Econometrics in Memory of Yehuda Grunfeld*. Stanford
   University Press, 1963.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``, ``Electricity1970``

   .. rubric:: Examples
      :name: examples

   ::

      data("Electricity1955")
      Electricity <- Electricity1955[1:145,]

      ## Greene (2003)
      ## Example 7.3
      ## Cobb-Douglas cost function
      fm_all <- lm(log(cost/fuel) ~ log(output) + log(labor/fuel) + log(capital/fuel),
        data = Electricity)
      summary(fm_all)

      ## hypothesis of constant returns to scale
      linearHypothesis(fm_all, "log(output) = 1")

      ## Table 7.4
      ## log quadratic cost function
      fm_all2 <- lm(log(cost/fuel) ~ log(output) + I(log(output)^2) + log(labor/fuel) + log(capital/fuel),
        data = Electricity)
      summary(fm_all2)

      ## More examples can be found in:
      ## help("Greene2003")
