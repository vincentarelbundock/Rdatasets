============= ===============
USConsump1979 R Documentation
============= ===============

US Consumption Data (1970–1979)
-------------------------------

Description
~~~~~~~~~~~

Time series data on US income and consumption expenditure, 1970–1979.

Usage
~~~~~

::

   data("USConsump1979")

Format
~~~~~~

An annual multiple time series from 1970 to 1979 with 2 variables.

income
   Disposable income.

expenditure
   Consumption expenditure.

Source
~~~~~~

Online complements to Greene (2003). Table F1.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

See Also
~~~~~~~~

``Greene2003``, ``USConsump1950``, ``USConsump1993``

Examples
~~~~~~~~

::

   data("USConsump1979")
   plot(USConsump1979)

   ## Example 1.1 in Greene (2003)
   plot(expenditure ~ income, data = as.data.frame(USConsump1979), pch = 19)
   fm <- lm(expenditure ~ income, data = as.data.frame(USConsump1979))
   summary(fm)
   abline(fm)
