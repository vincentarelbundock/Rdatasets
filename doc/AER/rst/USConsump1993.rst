.. container::

   ============= ===============
   USConsump1993 R Documentation
   ============= ===============

   .. rubric:: US Consumption Data (1950–1993)
      :name: USConsump1993

   .. rubric:: Description
      :name: description

   Time series data on US income and consumption expenditure, 1950–1993.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data("USConsump1993")

   .. rubric:: Format
      :name: format

   An annual multiple time series from 1950 to 1993 with 2 variables.

   income
      Disposable personal income (in 1987 USD).

   expenditure
      Personal consumption expenditures (in 1987 USD).

   .. rubric:: Source
      :name: source

   The data is from Baltagi (2002).

   .. rubric:: References
      :name: references

   Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

   .. rubric:: See Also
      :name: see-also

   ``Baltagi2002``, ``USConsump1950``, ``USConsump1979``

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ## data from Baltagi (2002)
      data("USConsump1993", package = "AER")
      plot(USConsump1993, plot.type = "single", col = 1:2)

      ## Chapter 5 (p. 122-125)
      fm <- lm(expenditure ~ income, data = USConsump1993)
      summary(fm)
      ## Durbin-Watson test (p. 122)
      dwtest(fm)
      ## Breusch-Godfrey test (Table 5.4, p. 124)
      bgtest(fm)
      ## Newey-West standard errors (Table 5.5, p. 125)
      coeftest(fm, vcov = NeweyWest(fm, lag = 3, prewhite = FALSE, adjust = TRUE)) 

      ## Chapter 8
      library("strucchange")
      ## Recursive residuals
      rr <- recresid(fm)
      rr
      ## Recursive CUSUM test
      rcus <- efp(expenditure ~ income, data = USConsump1993)
      plot(rcus)
      sctest(rcus)
      ## Harvey-Collier test
      harvtest(fm)
      ## NOTE" Mistake in Baltagi (2002) who computes
      ## the t-statistic incorrectly as 0.0733 via
      mean(rr)/sd(rr)/sqrt(length(rr))
      ## whereas it should be (as in harvtest)
      mean(rr)/sd(rr) * sqrt(length(rr))

      ## Rainbow test
      raintest(fm, center = 23)

      ## J test for non-nested models
      library("dynlm")
      fm1 <- dynlm(expenditure ~ income + L(income), data = USConsump1993)
      fm2 <- dynlm(expenditure ~ income + L(expenditure), data = USConsump1993)
      jtest(fm1, fm2)

      ## Chapter 14
      ## ACF and PACF for expenditures and first differences
      exps <- USConsump1993[, "expenditure"]
      (acf(exps))
      (pacf(exps))
      (acf(diff(exps)))
      (pacf(diff(exps)))

      ## dynamic regressions, eq. (14.8)
      fm <- dynlm(d(exps) ~ I(time(exps) - 1949) + L(exps))
      summary(fm)
