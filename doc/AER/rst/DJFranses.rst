========= ===============
DJFranses R Documentation
========= ===============

Dow Jones Index Data (Franses)
------------------------------

Description
~~~~~~~~~~~

Dow Jones index time series computed at the end of the week where week
is assumed to run from Thursday to Wednesday.

Usage
~~~~~

::

   data("DJFranses")

Format
~~~~~~

A weekly univariate time series from 1980(1) to 1994(42).

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

   data("DJFranses")
   plot(DJFranses)
