.. container::

   ============= ===============
   USConsump1979 R Documentation
   ============= ===============

   .. rubric:: US Consumption Data (1970–1979)
      :name: USConsump1979

   .. rubric:: Description
      :name: description

   Time series data on US income and consumption expenditure, 1970–1979.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("USConsump1979")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1970 to 1979 with 2 variables.

   income
      Disposable income.

   expenditure
      Consumption expenditure.

   .. rubric:: Source
      :name: source

   Online complements to Greene (2003). Table F1.1.

   https://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

   .. rubric:: References
      :name: references

   Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper
   Saddle River, NJ: Prentice Hall.

   .. rubric:: See Also
      :name: see-also

   ``Greene2003``, ``USConsump1950``, ``USConsump1993``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      data("USConsump1979")
      plot(USConsump1979)

      ## Example 1.1 in Greene (2003)
      plot(expenditure ~ income, data = as.data.frame(USConsump1979), pch = 19)
      fm <- lm(expenditure ~ income, data = as.data.frame(USConsump1979))
      summary(fm)
      abline(fm)
