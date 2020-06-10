========= ===============
economics R Documentation
========= ===============

US economic time series
-----------------------

Description
~~~~~~~~~~~

This dataset was produced from US economic time series data available
from http://research.stlouisfed.org/fred2. ``economics`` is in "wide"
format, ``economics_long`` is in "long" format.

Usage
~~~~~

::

   economics

   economics_long

Format
~~~~~~

A data frame with 574 rows and 6 variables:

date
   Month of data collection

pce
   personal consumption expenditures, in billions of dollars,
   http://research.stlouisfed.org/fred2/series/PCE

pop
   total population, in thousands,
   http://research.stlouisfed.org/fred2/series/POP

psavert
   personal savings rate,
   http://research.stlouisfed.org/fred2/series/PSAVERT/

uempmed
   median duration of unemployment, in weeks,
   http://research.stlouisfed.org/fred2/series/UEMPMED

unemploy
   number of unemployed in thousands,
   http://research.stlouisfed.org/fred2/series/UNEMPLOY

An object of class ``tbl_df`` (inherits from ``tbl``, ``data.frame``)
with 2870 rows and 4 columns.
