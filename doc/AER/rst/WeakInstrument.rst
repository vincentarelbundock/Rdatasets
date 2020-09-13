============== ===============
WeakInstrument R Documentation
============== ===============

Artificial Weak Instrument Data
-------------------------------

Description
~~~~~~~~~~~

Artificial data set to illustrate the problem of weak instruments.

Usage
~~~~~

::

   data("WeakInstrument")

Format
~~~~~~

A data frame containing 200 observations on 3 variables.

y
   dependent variable.

x
   regressor variable.

z
   instrument variable.

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   data("WeakInstrument")
   fm <- ivreg(y ~ x | z, data = WeakInstrument)
   summary(fm)
