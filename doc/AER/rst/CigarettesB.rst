=========== ===============
CigarettesB R Documentation
=========== ===============

Cigarette Consumption Data
--------------------------

Description
~~~~~~~~~~~

Cross-section data on cigarette consumption for 46 US States, for the
year 1992.

Usage
~~~~~

::

   data("CigarettesB")

Format
~~~~~~

A data frame containing 46 observations on 3 variables.

packs
   Logarithm of cigarette consumption (in packs) per person of smoking
   age (> 16 years).

price
   Logarithm of real price of cigarette in each state.

income
   Logarithm of real disposable income (per capita) in each state.

Source
~~~~~~

The data are from Baltagi (2002).

References
~~~~~~~~~~

Baltagi, B.H. (2002). *Econometrics*, 3rd ed. Berlin, Springer.

Baltagi, B.H. and Levin, D. (1992). Cigarette Taxation: Raising Revenues
and Reducing Consumption. *Structural Change and Economic Dynamics*,
**3**, 321–335.

See Also
~~~~~~~~

``Baltagi2002``, ``CigarettesSW``

Examples
~~~~~~~~

::

   data("CigarettesB")

   ## Baltagi (2002)
   ## Table 3.3
   cig_lm <- lm(packs ~ price, data = CigarettesB)
   summary(cig_lm)

   ## Chapter 5: diagnostic tests (p. 111-115)
   cig_lm2 <- lm(packs ~ price + income, data = CigarettesB)
   summary(cig_lm2)
   ## Glejser tests (p. 112)
   ares <- abs(residuals(cig_lm2))
   summary(lm(ares ~ income, data = CigarettesB))
   summary(lm(ares ~ I(1/income), data = CigarettesB))
   summary(lm(ares ~ I(1/sqrt(income)), data = CigarettesB))
   summary(lm(ares ~ sqrt(income), data = CigarettesB))
   ## Goldfeld-Quandt test (p. 112)
   gqtest(cig_lm2, order.by = ~ income, data = CigarettesB, fraction = 12, alternative = "less")
   ## NOTE: Baltagi computes the test statistic as mss1/mss2,
   ## i.e., tries to find decreasing variances. gqtest() always uses
   ## mss2/mss1 and has an "alternative" argument.

   ## Spearman rank correlation test (p. 113)
   cor.test(~ ares + income, data = CigarettesB, method = "spearman")
   ## Breusch-Pagan test (p. 113)
   bptest(cig_lm2, varformula = ~ income, data = CigarettesB, student = FALSE)
   ## White test (Table 5.1, p. 113)
   bptest(cig_lm2, ~ income * price + I(income^2) + I(price^2), data = CigarettesB)
   ## White HC standard errors (Table 5.2, p. 114)
   coeftest(cig_lm2, vcov = vcovHC(cig_lm2, type = "HC1"))
   ## Jarque-Bera test (Figure 5.2, p. 115)
   hist(residuals(cig_lm2), breaks = 16, ylim = c(0, 10), col = "lightgray")
   library("tseries")
   jarque.bera.test(residuals(cig_lm2))

   ## Tables 8.1 and 8.2
   influence.measures(cig_lm2)

   ## More examples can be found in:
   ## help("Baltagi2002")
