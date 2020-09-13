======== ===============
USMacroG R Documentation
======== ===============

US Macroeconomic Data (1950–2000, Greene)
-----------------------------------------

Description
~~~~~~~~~~~

Time series data on 12 US macroeconomic variables for 1950–2000.

Usage
~~~~~

::

   data("USMacroG")

Format
~~~~~~

A quarterly multiple time series from 1950(1) to 2000(4) with 12
variables.

gdp
   Real gross domestic product (in billion USD),

consumption
   Real consumption expenditures,

invest
   Real investment by private sector,

government
   Real government expenditures,

dpi
   Real disposable personal income,

cpi
   Consumer price index,

m1
   Nominal money stock,

tbill
   Quarterly average of month end 90 day treasury bill rate,

unemp
   Unemployment rate,

population
   Population (in million), interpolation of year end figures using
   constant growth rate per quarter,

inflation
   Inflation rate,

interest
   Ex post real interest rate (essentially, ``tbill - inflation``).

Source
~~~~~~

Online complements to Greene (2003). Table F5.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``, ``USMacroSW``, ``USMacroSWQ``, ``USMacroSWM``,
``USMacroB``

Examples
~~~~~~~~

::

   ## data and trend as used by Greene (2003)
   data("USMacroG")
   ltrend <- 1:nrow(USMacroG) - 1

   ## Example 6.1
   ## Table 6.1
   library("dynlm")
   fm6.1 <- dynlm(log(invest) ~ tbill + inflation + log(gdp) + ltrend, data = USMacroG)
   fm6.3 <- dynlm(log(invest) ~ I(tbill - inflation) + log(gdp) + ltrend, data = USMacroG)
   summary(fm6.1)
   summary(fm6.3)
   deviance(fm6.1)
   deviance(fm6.3)
   vcov(fm6.1)[2,3] 

   ## F test
   linearHypothesis(fm6.1, "tbill + inflation = 0")
   ## alternatively
   anova(fm6.1, fm6.3)
   ## t statistic
   sqrt(anova(fm6.1, fm6.3)[2,5])
    
   ## Example 8.2
   ## Ct = b0 + b1*Yt + b2*Y(t-1) + v
   fm1 <- dynlm(consumption ~ dpi + L(dpi), data = USMacroG)
   ## Ct = a0 + a1*Yt + a2*C(t-1) + u
   fm2 <- dynlm(consumption ~ dpi + L(consumption), data = USMacroG)

   ## Cox test in both directions:
   coxtest(fm1, fm2)
   ## ...and do the same for jtest() and encomptest().
   ## Notice that in this particular case two of them are coincident.
   jtest(fm1, fm2)
   encomptest(fm1, fm2)
   ## encomptest could also be performed `by hand' via
   fmE <- dynlm(consumption ~ dpi + L(dpi) + L(consumption), data = USMacroG)
   waldtest(fm1, fmE, fm2)

   ## More examples can be found in:
   ## help("Greene2003")
