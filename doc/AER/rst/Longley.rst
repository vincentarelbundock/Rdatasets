.. container::

   ======= ===============
   Longley R Documentation
   ======= ===============

   .. rubric:: Longley's Regression Data
      :name: longleys-regression-data

   .. rubric:: Description
      :name: description

   US macroeconomic time series, 1947–1962.

   .. rubric:: Usage
      :name: usage

   ::

      data("Longley")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1947 to 1962 with 4 variables.

   employment
      Number of people employed (in 1000s).

   price
      GNP deflator.

   gnp
      Gross national product.

   armedforces
      Number of people in the armed forces.

   .. rubric:: Details
      :name: details

   An extended version of this data set, formatted as a ``"data.frame"``
   is available as ``longley`` in base R.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003). Table F4.2.

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   Longley, J.W. (1967). An Appraisal of Least-Squares Programs from the
   Point of View of the User. *Journal of the American Statistical
   Association*, **62**, 819–841.

   .. rubric:: See Also
      :name: see-also

   ``longley``, ``Greene2003``

   .. rubric:: Examples
      :name: examples

   ::

      data("Longley")
      library("dynlm")

      ## Example 4.6 in Greene (2003)
      fm1 <- dynlm(employment ~ time(employment) + price + gnp + armedforces,
        data = Longley)
      fm2 <- update(fm1, end = 1961)
      cbind(coef(fm2), coef(fm1))

      ## Figure 4.3 in Greene (2003)
      plot(rstandard(fm2), type = "b", ylim = c(-3, 3))
      abline(h = c(-2, 2), lty = 2)
