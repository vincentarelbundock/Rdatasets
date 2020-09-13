================== ===============
GermanUnemployment R Documentation
================== ===============

Unemployment in Germany Data
----------------------------

Description
~~~~~~~~~~~

Time series of unemployment rate (in percent) in Germany.

Usage
~~~~~

::

   data("GermanUnemployment")

Format
~~~~~~

A quarterly multiple time series from 1962(1) to 1991(4) with 2
variables.

unadjusted
   Raw unemployment rate,

adjusted
   Seasonally adjusted rate.

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

   data("GermanUnemployment")
   plot(GermanUnemployment, plot.type = "single", col = 1:2)
