.. container::

   ============= ===============
   BenderlyZwick R Documentation
   ============= ===============

   .. rubric:: Benderly and Zwick Data: Inflation, Growth and Stock
      Returns
      :name: benderly-and-zwick-data-inflation-growth-and-stock-returns

   .. rubric:: Description
      :name: description

   Time series data, 1952–1982.

   .. rubric:: Usage
      :name: usage

   ::

      data("BenderlyZwick")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1952 to 1982 with 5 variables.

   returns
      real annual returns on stocks, measured using the
      Ibbotson-Sinquefeld data base.

   growth
      annual growth rate of output, measured by real GNP (from the given
      year to the next year).

   inflation
      inflation rate, measured as growth of price rate (from December of
      the previous year to December of the present year).

   growth2
      annual growth rate of real GNP as given by Baltagi.

   inflation2
      inflation rate as given by Baltagi

   .. rubric:: Source
      :name: source

   The first three columns of the data are from Table 1 in Benderly and
   Zwick (1985). The remaining columns are taken from the online
   complements of Baltagi (2002). The first column is identical in both
   sources, the other two variables differ in their numeric values and
   additionally the growth series seems to be lagged differently.
   Baltagi (2002) states Lott and Ray (1992) as the source for his
   version of the data set.

   .. rubric:: References
      :name: references

   Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

   Benderly, J., and Zwick, B. (1985). Inflation, Real Balances, Output
   and Real Stock Returns. *American Economic Review*, **75**,
   1115–1123.

   Lott, W.F., and Ray, S.C. (1992). *Applied Econometrics: Problems
   with Data Sets*. New York: The Dryden Press.

   Zaman, A., Rousseeuw, P.J., and Orhan, M. (2001). Econometric
   Applications of High-Breakdown Robust Regression Techniques.
   *Economics Letters*, **71**, 1–8.

   .. rubric:: See Also
      :name: see-also

   ``Baltagi2002``

   .. rubric:: Examples
      :name: examples

   ::

      data("BenderlyZwick")
      plot(BenderlyZwick)

      ## Benderly and Zwick (1985), p. 1116
      library("dynlm")
      bz_ols <- dynlm(returns ~ growth + inflation,
        data = BenderlyZwick/100, start = 1956, end = 1981)
      summary(bz_ols)

      ## Zaman, Rousseeuw and Orhan (2001)
      ## use larger period, without scaling
      bz_ols2 <- dynlm(returns ~ growth + inflation,
        data = BenderlyZwick, start = 1954, end = 1981)
      summary(bz_ols2)
