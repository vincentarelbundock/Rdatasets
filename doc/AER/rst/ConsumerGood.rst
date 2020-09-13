============ ===============
ConsumerGood R Documentation
============ ===============

Properties of a Fast-Moving Consumer Good
-----------------------------------------

Description
~~~~~~~~~~~

Time series of distribution, market share and price of a fast-moving
consumer good.

Usage
~~~~~

::

   data("ConsumerGood")

Format
~~~~~~

A weekly multiple time series from 1989(11) to 1991(9) with 3 variables.

distribution
   Distribution.

share
   Market share.

price
   Price.

Source
~~~~~~

Online complements to Franses (1998).

References
~~~~~~~~~~

Franses, P.H. (1998). *Time Series Models for Business and Economic
Forecasting*. Cambridge, UK: Cambridge University Press.

See Also
~~~~~~~~

``Franses1998``

Examples
~~~~~~~~

::

   data("ConsumerGood")
   plot(ConsumerGood)
