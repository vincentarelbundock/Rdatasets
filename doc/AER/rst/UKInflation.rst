=========== ===============
UKInflation R Documentation
=========== ===============

UK Manufacturing Inflation Data
-------------------------------

Description
~~~~~~~~~~~

Time series of observed and expected price changes in British
manufacturing.

Usage
~~~~~

::

   data("UKInflation")

Format
~~~~~~

A quarterly multiple time series from 1972(1) to 1985(2) with 2
variables.

actual
   Actual inflation.

expected
   Expected inflation.

Source
~~~~~~

Online complements to Greene (2003), Table F8.1.

http://pages.stern.nyu.edu/~wgreene/Text/tables/tablelist5.htm

References
~~~~~~~~~~

Greene, W.H. (2003). *Econometric Analysis*, 5th edition. Upper Saddle
River, NJ: Prentice Hall.

Pesaran, M.H., and Hall, A.D. (1988). Tests of Non-nested Linear
Regression Models Subject To Linear Restrictions. *Economics Letters*,
**27**, 341–348.

See Also
~~~~~~~~

``Greene2003``

Examples
~~~~~~~~

::

   data("UKInflation")
   plot(UKInflation)
