========== ===============
OECDGrowth R Documentation
========== ===============

OECD Macroeconomic Data
-----------------------

Description
~~~~~~~~~~~

Cross-section data on OECD countries, used for growth regressions.

Usage
~~~~~

::

   data("OECDGrowth")

Format
~~~~~~

A data frame with 22 observations on the following 6 variables.

gdp85
   real GDP in 1985 (per person of working age, i.e., age 15 to 65), in
   1985 international prices.

gdp60
   real GDP in 1960 (per person of working age, i.e., age 15 to 65), in
   1985 international prices.

invest
   average of annual ratios of real domestic investment to real GDP
   (1960–1985).

school
   percentage of the working-age population that is in secondary school.

randd
   average of annual ratios of gross domestic expenditure on research
   and development to nominal GDP (of available observations during
   1960–1985).

popgrowth
   annual population growth 1960–1985, computed as
   ``log(pop85/pop60)/25``.

Source
~~~~~~

Appendix 1 Nonneman and Vanhoudt (1996), except for one bad misprint:
The value of ``school`` for Norway is given as 0.01, the correct value
is 0.1 (see Mankiw, Romer and Weil, 1992). ``OECDGrowth`` contains the
corrected data.

References
~~~~~~~~~~

Mankiw, N.G., Romer, D., and Weil, D.N. (1992). A Contribution to the
Empirics of Economic Growth. *Quarterly Journal of Economics*, **107**,
407–437.

Nonneman, W., and Vanhoudt, P. (1996). A Further Augmentation of the
Solow Model and the Empirics of Economic Growth. *Quarterly Journal of
Economics*, **111**, 943–953.

Zaman, A., Rousseeuw, P.J., and Orhan, M. (2001). Econometric
Applications of High-Breakdown Robust Regression Techniques. *Economics
Letters*, **71**, 1–8.

See Also
~~~~~~~~

``GrowthDJ``, ``GrowthSW``

Examples
~~~~~~~~

::

   data("OECDGrowth")

   ## Nonneman and Vanhoudt (1996), Table II
   cor(OECDGrowth[, 3:6])
   cor(log(OECDGrowth[, 3:6]))

   ## textbook Solow model
   ## Nonneman and Vanhoudt (1996), Table IV, and
   ## Zaman, Rousseeuw and Orhan (2001), Table 2
   so_ols <- lm(log(gdp85/gdp60) ~ log(gdp60) + log(invest) + log(popgrowth+.05),
     data = OECDGrowth)
   summary(so_ols)

   ## augmented and extended Solow growth model
   ## Nonneman and Vanhoudt (1996), Table IV
   aso_ols <- lm(log(gdp85/gdp60) ~ log(gdp60) + log(invest) +
     log(school) + log(popgrowth+.05), data = OECDGrowth)
   eso_ols <- lm(log(gdp85/gdp60) ~ log(gdp60) + log(invest) +
     log(school) + log(randd) + log(popgrowth+.05), data = OECDGrowth)

   ## determine unusual observations using LTS
   library("MASS")
   so_lts <- lqs(log(gdp85/gdp60) ~ log(gdp60) +  log(invest) + log(popgrowth+.05),
     data = OECDGrowth, psamp = 13, nsamp = "exact")

   ## large residuals
   nok1 <- abs(residuals(so_lts))/so_lts$scale[2] > 2.5
   residuals(so_lts)[nok1]/so_lts$scale[2]

   ## high leverage
   X <- model.matrix(so_ols)[,-1]
   cv <- cov.rob(X, nsamp = "exact")
   mh <- sqrt(mahalanobis(X, cv$center, cv$cov))
   nok2 <- mh > 2.5
   mh[nok2]

   ## bad leverage
   nok <- which(nok1 & nok2)
   nok

   ## robust results without bad leverage points
   so_rob <- update(so_ols, subset = -nok)
   summary(so_rob)
   ## This is similar to Zaman, Rousseeuw and Orhan (2001), Table 2
   ## but uses exact computations (and not sub-optimal results
   ## for the robust functions lqs and cov.rob)
