========== ===============
Fatalities R Documentation
========== ===============

US Traffic Fatalities
---------------------

Description
~~~~~~~~~~~

US traffic fatalities panel data for the “lower 48” US states (i.e.,
excluding Alaska and Hawaii), annually for 1982 through 1988.

Usage
~~~~~

::

   data("Fatalities")

Format
~~~~~~

A data frame containing 336 observations on 34 variables.

state
   factor indicating state.

year
   factor indicating year.

spirits
   numeric. Spirits consumption.

unemp
   numeric. Unemployment rate.

income
   numeric. Per capita personal income in 1987 dollars.

emppop
   numeric. Employment/population ratio.

beertax
   numeric. Tax on case of beer.

baptist
   numeric. Percent of southern baptist.

mormon
   numeric. Percent of mormon.

drinkage
   numeric. Minimum legal drinking age.

dry
   numeric. Percent residing in “dry” countries.

youngdrivers
   numeric. Percent of drivers aged 15–24.

miles
   numeric. Average miles per driver.

breath
   factor. Preliminary breath test law?

jail
   factor. Mandatory jail sentence?

service
   factor. Mandatory community service?

fatal
   numeric. Number of vehicle fatalities.

nfatal
   numeric. Number of night-time vehicle fatalities.

sfatal
   numeric. Number of single vehicle fatalities.

fatal1517
   numeric. Number of vehicle fatalities, 15–17 year olds.

nfatal1517
   numeric. Number of night-time vehicle fatalities, 15–17 year olds.

fatal1820
   numeric. Number of vehicle fatalities, 18–20 year olds.

nfatal1820
   numeric. Number of night-time vehicle fatalities, 18–20 year olds.

fatal2124
   numeric. Number of vehicle fatalities, 21–24 year olds.

nfatal2124
   numeric. Number of night-time vehicle fatalities, 21–24 year olds.

afatal
   numeric. Number of alcohol-involved vehicle fatalities.

pop
   numeric. Population.

pop1517
   numeric. Population, 15–17 year olds.

pop1820
   numeric. Population, 18–20 year olds.

pop2124
   numeric. Population, 21–24 year olds.

milestot
   numeric. Total vehicle miles (millions).

unempus
   numeric. US unemployment rate.

emppopus
   numeric. US employment/population ratio.

gsp
   numeric. GSP rate of change.

Details
~~~~~~~

Traffic fatalities are from the US Department of Transportation Fatal
Accident Reporting System. The beer tax is the tax on a case of beer,
which is an available measure of state alcohol taxes more generally. The
drinking age variable is a factor indicating whether the legal drinking
age is 18, 19, or 20. The two binary punishment variables describe the
state's minimum sentencing requirements for an initial drunk driving
conviction.

Total vehicle miles traveled annually by state was obtained from the
Department of Transportation. Personal income was obtained from the US
Bureau of Economic Analysis, and the unemployment rate was obtained from
the US Bureau of Labor Statistics.

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Ruhm, C. J. (1996). Alcohol Policies and Highway Vehicle Fatalities.
*Journal of Health Economics*, **15**, 435–454.

Stock, J. H. and Watson, M. W. (2007). *Introduction to Econometrics*,
2nd ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   ## data from Stock and Watson (2007)
   data("Fatalities", package = "AER")
   ## add fatality rate (number of traffic deaths
   ## per 10,000 people living in that state in that year)
   Fatalities$frate <- with(Fatalities, fatal/pop * 10000)
   ## add discretized version of minimum legal drinking age
   Fatalities$drinkagec <- cut(Fatalities$drinkage,
     breaks = 18:22, include.lowest = TRUE, right = FALSE)
   Fatalities$drinkagec <- relevel(Fatalities$drinkagec, ref = 4)
   ## any punishment?
   Fatalities$punish <- with(Fatalities,
     factor(jail == "yes" | service == "yes", labels = c("no", "yes")))
   ## plm package
   library("plm")

   ## for comparability with Stata we use HC1 below
   ## p. 351, Eq. (10.2)
   f1982 <- subset(Fatalities, year == "1982")
   fm_1982 <- lm(frate ~ beertax, data = f1982)
   coeftest(fm_1982, vcov = vcovHC(fm_1982, type = "HC1"))

   ## p. 353, Eq. (10.3)
   f1988 <- subset(Fatalities, year == "1988")
   fm_1988 <- lm(frate ~ beertax, data = f1988)
   coeftest(fm_1988, vcov = vcovHC(fm_1988, type = "HC1"))

   ## pp. 355, Eq. (10.8)
   fm_diff <- lm(I(f1988$frate - f1982$frate) ~ I(f1988$beertax - f1982$beertax))
   coeftest(fm_diff, vcov = vcovHC(fm_diff, type = "HC1"))

   ## pp. 360, Eq. (10.15)
   ##   (1) via formula
   fm_sfe <- lm(frate ~ beertax + state - 1, data = Fatalities)
   ##   (2) by hand
   fat <- with(Fatalities,
     data.frame(frates = frate - ave(frate, state),
     beertaxs = beertax - ave(beertax, state)))
   fm_sfe2 <- lm(frates ~ beertaxs - 1, data = fat)
   ##   (3) via plm()
   fm_sfe3 <- plm(frate ~ beertax, data = Fatalities,
     index = c("state", "year"), model = "within")

   coeftest(fm_sfe, vcov = vcovHC(fm_sfe, type = "HC1"))[1,]
   ## uses different df in sd and p-value
   coeftest(fm_sfe2, vcov = vcovHC(fm_sfe2, type = "HC1"))[1,]
   ## uses different df in p-value
   coeftest(fm_sfe3, vcov = vcovHC(fm_sfe3, type = "HC1", method = "white1"))[1,]


   ## pp. 363, Eq. (10.21)
   ## via lm()
   fm_stfe <- lm(frate ~ beertax + state + year - 1, data = Fatalities)
   coeftest(fm_stfe, vcov = vcovHC(fm_stfe, type = "HC1"))[1,]
   ## via plm()
   fm_stfe2 <- plm(frate ~ beertax, data = Fatalities,
     index = c("state", "year"), model = "within", effect = "twoways")
   coeftest(fm_stfe2, vcov = vcovHC) ## different


   ## p. 368, Table 10.1, numbers refer to cols.
   fm1 <- plm(frate ~ beertax, data = Fatalities, index = c("state", "year"), model = "pooling")
   fm2 <- plm(frate ~ beertax, data = Fatalities, index = c("state", "year"), model = "within")
   fm3 <- plm(frate ~ beertax, data = Fatalities, index = c("state", "year"), model = "within",
     effect = "twoways")
   fm4 <- plm(frate ~ beertax + drinkagec + jail + service + miles + unemp + log(income),
     data = Fatalities, index = c("state", "year"), model = "within", effect = "twoways")
   fm5 <- plm(frate ~ beertax + drinkagec + jail + service + miles,
     data = Fatalities, index = c("state", "year"), model = "within", effect = "twoways")
   fm6 <- plm(frate ~ beertax + drinkage + punish + miles + unemp + log(income),
     data = Fatalities, index = c("state", "year"), model = "within", effect = "twoways")
   fm7 <- plm(frate ~ beertax + drinkagec + jail + service + miles + unemp + log(income),
     data = Fatalities, index = c("state", "year"), model = "within", effect = "twoways")
   ## summaries not too close, s.e.s generally too small
   coeftest(fm1, vcov = vcovHC)
   coeftest(fm2, vcov = vcovHC)
   coeftest(fm3, vcov = vcovHC)
   coeftest(fm4, vcov = vcovHC)
   coeftest(fm5, vcov = vcovHC)
   coeftest(fm6, vcov = vcovHC)
   coeftest(fm7, vcov = vcovHC)

   ## TODO: Testing exclusion restrictions
