.. container::

   .. container::

      ======= ===============
      Smarket R Documentation
      ======= ===============

      .. rubric:: S&P Stock Market Data
         :name: sp-stock-market-data

      .. rubric:: Description
         :name: description

      Daily percentage returns for the S&P 500 stock index between 2001
      and 2005.

      .. rubric:: Usage
         :name: usage

      ::

         Smarket

      .. rubric:: Format
         :name: format

      A data frame with 1250 observations on the following 9 variables.

      ``Year``
         The year that the observation was recorded

      ``Lag1``
         Percentage return for previous day

      ``Lag2``
         Percentage return for 2 days previous

      ``Lag3``
         Percentage return for 3 days previous

      ``Lag4``
         Percentage return for 4 days previous

      ``Lag5``
         Percentage return for 5 days previous

      ``Volume``
         Volume of shares traded (number of daily shares traded in
         billions)

      ``Today``
         Percentage return for today

      ``Direction``
         A factor with levels ``Down`` and ``Up`` indicating whether the
         market had a positive or negative return on a given day

      .. rubric:: Source
         :name: source

      Raw values of the S&P 500 were obtained from Yahoo Finance and
      then converted to percentages and lagged.

      .. rubric:: References
         :name: references

      James, G., Witten, D., Hastie, T., and Tibshirani, R. (2013) *An
      Introduction to Statistical Learning with applications in R*,
      https://www.statlearning.com, Springer-Verlag, New York

      .. rubric:: Examples
         :name: examples

      ::

         summary(Smarket)
         lm(Today~Lag1+Lag2,data=Smarket)
