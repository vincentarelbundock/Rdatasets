====== ===============
KleinI R Documentation
====== ===============

Klein Model I
-------------

Description
~~~~~~~~~~~

Klein's Model I for the US economy.

Usage
~~~~~

::

   data("KleinI")

Format
~~~~~~

An annual multiple time series from 1920 to 1941 with 9 variables.

consumption
   Consumption.

cprofits
   Corporate profits.

pwage
   Private wage bill.

invest
   Investment.

capital
   Previous year's capital stock.

gnp
   Gross national product.

gwage
   Government wage bill.

gexpenditure
   Government spending.

taxes
   Taxes.

Source
~~~~~~

Online complements to Greene (2003). Table F15.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

Klein, L. (1950). *Economic Fluctuations in the United States,
1921–1941*. New York: John Wiley.

Maddala, G.S. (1977). *Econometrics*. New York: McGraw-Hill.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("KleinI", package = "AER")
   plot(KleinI)

   ## Greene (2003), Tab. 15.3, OLS
   library("dynlm")
   fm_cons <- dynlm(consumption ~ cprofits + L(cprofits) + I(pwage + gwage), data = KleinI)
   fm_inv <- dynlm(invest ~ cprofits + L(cprofits) + capital, data = KleinI)
   fm_pwage <- dynlm(pwage ~ gnp + L(gnp) + I(time(gnp) - 1931), data = KleinI)
   summary(fm_cons)
   summary(fm_inv)
   summary(fm_pwage)

   ## More examples can be found in:
   ## help("Greene2003")
