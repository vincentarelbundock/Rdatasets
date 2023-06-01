.. container::

   ============ ===============
   CigarettesSW R Documentation
   ============ ===============

   .. rubric:: Cigarette Consumption Panel Data
      :name: CigarettesSW

   .. rubric:: Description
      :name: description

   Panel data on cigarette consumption for the 48 continental US States
   from 1985–1995.

   .. rubric:: Usage
      :name: usage

   ::

      data("CigarettesSW")

   .. rubric:: Format
      :name: format

   A data frame containing 48 observations on 7 variables for 2 periods.

   state
      Factor indicating state.

   year
      Factor indicating year.

   cpi
      Consumer price index.

   population
      State population.

   packs
      Number of packs per capita.

   income
      State personal income (total, nominal).

   tax
      Average state, federal and average local excise taxes for fiscal
      year.

   price
      Average price during fiscal year, including sales tax.

   taxs
      Average excise taxes for fiscal year, including sales tax.

   .. rubric:: Source
      :name: source

   Online complements to Stock and Watson (2007).

   .. rubric:: References
      :name: references

   Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*,
   2nd ed. Boston: Addison Wesley.

   .. rubric:: See Also
      :name: see-also

   ``StockWatson2007``, ``CigarettesB``

   .. rubric:: Examples
      :name: examples

   ::

      ## Stock and Watson (2007)
      ## data and transformations 
      data("CigarettesSW")
      CigarettesSW <- transform(CigarettesSW,
        rprice  = price/cpi,
        rincome = income/population/cpi,
        rtax    = tax/cpi,
        rtdiff  = (taxs - tax)/cpi
      )
      c1985 <- subset(CigarettesSW, year == "1985")
      c1995 <- subset(CigarettesSW, year == "1995")

      ## convenience function: HC1 covariances
      hc1 <- function(x) vcovHC(x, type = "HC1")

      ## Equations 12.9--12.11
      fm_s1 <- lm(log(rprice) ~ rtdiff, data = c1995)
      coeftest(fm_s1, vcov = hc1)
      fm_s2 <- lm(log(packs) ~ fitted(fm_s1), data = c1995)
      fm_ivreg <- ivreg(log(packs) ~ log(rprice) | rtdiff, data = c1995)
      coeftest(fm_ivreg, vcov = hc1)

      ## Equation 12.15
      fm_ivreg2 <- ivreg(log(packs) ~ log(rprice) + log(rincome) | log(rincome) + rtdiff, data = c1995)
      coeftest(fm_ivreg2, vcov = hc1)
      ## Equation 12.16
      fm_ivreg3 <- ivreg(log(packs) ~ log(rprice) + log(rincome) | log(rincome) + rtdiff + rtax,
        data = c1995)
      coeftest(fm_ivreg3, vcov = hc1)

      ## More examples can be found in:
      ## help("StockWatson2007")
