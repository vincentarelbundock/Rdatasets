=========== ===============
USSeatBelts R Documentation
=========== ===============

Effects of Mandatory Seat Belt Laws in the US
---------------------------------------------

Description
~~~~~~~~~~~

Balanced panel data for the years 1983–1997 from 50 US States, plus the
District of Columbia, for assessing traffic fatalities and seat belt
usage.

Usage
~~~~~

::

   data("USSeatBelts")

Format
~~~~~~

A data frame containing 765 observations on 12 variables.

state
   factor indicating US state (abbreviation).

year
   factor indicating year.

miles
   millions of traffic miles per year.

fatalities
   number of fatalities per million of traffic miles (absolute
   frequencies of fatalities = ``fatalities`` times ``miles``).

seatbelt
   seat belt usage rate, as self-reported by state population surveyed.

speed65
   factor. Is there a 65 mile per hour speed limit?

speed70
   factor. Is there a 70 (or higher) mile per hour speed limit?

drinkage
   factor. Is there a minimum drinking age of 21 years?

alcohol
   factor. Is there a maximum of 0.08 blood alcohol content?

income
   median per capita income (in current US dollar).

age
   mean age.

enforce
   factor indicating seat belt law enforcement (``"no"``, ``"primary"``,
   ``"secondary"``).

Details
~~~~~~~

Some data series from Cohen and Einav (2003) have not been included in
the data frame.

Source
~~~~~~

Online complements to Stock and Watson (2007).

References
~~~~~~~~~~

Cohen, A., and Einav, L. (2003). The Effects of Mandatory Seat Belt Laws
on Driving Behavior and Traffic Fatalities. *The Review of Economics and
Statistics*, **85**, 828–843

Stock, J.H. and Watson, M.W. (2007). *Introduction to Econometrics*, 2nd
ed. Boston: Addison Wesley.

See Also
~~~~~~~~

``StockWatson2007``

Examples
~~~~~~~~

::

   data("USSeatBelts")
   summary(USSeatBelts)

   library("lattice")
   xyplot(fatalities ~ as.numeric(as.character(year)) | state, data = USSeatBelts, type = "l")
