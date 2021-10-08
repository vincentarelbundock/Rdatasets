.. container::

   ======== ===============
   GrowthDJ R Documentation
   ======== ===============

   .. rubric:: Determinants of Economic Growth
      :name: determinants-of-economic-growth

   .. rubric:: Description
      :name: description

   Growth regression data as provided by Durlauf & Johnson (1995).

   .. rubric:: Usage
      :name: usage

   ::

      data("GrowthDJ")

   .. rubric:: Format
      :name: format

   A data frame containing 121 observations on 10 variables.

   oil
      factor. Is the country an oil-producing country?

   inter
      factor. Does the country have better quality data?

   oecd
      factor. Is the country a member of the OECD?

   gdp60
      Per capita GDP in 1960.

   gdp85
      Per capita GDP in 1985.

   gdpgrowth
      Average growth rate of per capita GDP from 1960 to 1985 (in
      percent).

   popgrowth
      Average growth rate of working-age population 1960 to 1985 (in
      percent).

   invest
      Average ratio of investment (including Government Investment) to
      GDP from 1960 to 1985 (in percent).

   school
      Average fraction of working-age population enrolled in secondary
      school from 1960 to 1985 (in percent).

   literacy60
      Fraction of the population over 15 years old that is able to read
      and write in 1960 (in percent).

   .. rubric:: Details
      :name: details

   The data are derived from the Penn World Table 4.0 and are given in
   Mankiw, Romer and Weil (1992), except ``literacy60`` that is from the
   World Bank's World Development Report.

   .. rubric:: Source
      :name: source

   Journal of Applied Econometrics Data Archive.

   http://qed.econ.queensu.ca/jae/1995-v10.4/durlauf-johnson/

   .. rubric:: References
      :name: references

   Durlauf, S.N., and Johnson, P.A. (1995). Multiple Regimes and
   Cross-Country Growth Behavior. *Journal of Applied Econometrics*,
   **10**, 365–384.

   Koenker, R., and Zeileis, A. (2009). On Reproducible Econometric
   Research. *Journal of Applied Econometrics*, **24**\ (5), 833–847.

   Mankiw, N.G, Romer, D., and Weil, D.N. (1992). A Contribution to the
   Empirics of Economic Growth. *Quarterly Journal of Economics*,
   **107**, 407–437.

   Masanjala, W.H., and Papageorgiou, C. (2004). The Solow Model with
   CES Technology: Nonlinearities and Parameter Heterogeneity. *Journal
   of Applied Econometrics*, **19**, 171–201.

   .. rubric:: See Also
      :name: see-also

   ``OECDGrowth``, ``GrowthSW``

   .. rubric:: Examples
      :name: examples

   ::

      ## data for non-oil-producing countries
      data("GrowthDJ")
      dj <- subset(GrowthDJ, oil == "no")
      ## Different scalings have been used by different authors,
      ## different types of standard errors, etc.,
      ## see Koenker & Zeileis (2009) for an overview

      ## Durlauf & Johnson (1995), Table II
      mrw_model <- I(log(gdp85) - log(gdp60)) ~ log(gdp60) +
        log(invest/100) + log(popgrowth/100 + 0.05) + log(school/100)
      dj_mrw <- lm(mrw_model, data = dj)
      coeftest(dj_mrw) 

      dj_model <- I(log(gdp85) - log(gdp60)) ~ log(gdp60) +
        log(invest) + log(popgrowth/100 + 0.05) + log(school)
      dj_sub1 <- lm(dj_model, data = dj, subset = gdp60 < 1800 & literacy60 < 50)
      coeftest(dj_sub1, vcov = sandwich)

      dj_sub2 <- lm(dj_model, data = dj, subset = gdp60 >= 1800 & literacy60 >= 50)
      coeftest(dj_sub2, vcov = sandwich)
