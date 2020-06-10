==== ===============
grog R Documentation
==== ===============

Alcohol consumption in Australia and New Zealand
------------------------------------------------

Description
~~~~~~~~~~~

Data are annual apparent alcohol consumption in Australia and New
Zealand, in liters of pure alcohol content per annum, separately for
beer, wine, and spirits (including spirit-based products).

Usage
~~~~~

::

   data(grog)

Format
~~~~~~

A data frame with 18 observations on the following 5 variables.

``Beer``
   liters per annum

``Wine``
   liters per annum

``Spirit``
   liters per annum

``Country``
   a factor with levels ``Australia`` ``NewZealand``

``Year``
   Year ending in June of the given year

Details
~~~~~~~

Data are total available pure alcohol content, for the three categories,
divided by numbers of persons aged 15 years or more. The source data for
New Zealand included quarterly figures from December 1997, and annual
data to December for all years. The annual New Zealand figure to June
1998 required an estimate for September 1997 that was obtained by
extrapolating back the third quarter trend line from later years.

Source
~~~~~~

Australian data are from http://www.abs.gov.au. For New Zealand data, go
to http://www.stats.govt.nz/infoshare/ Click on 'Industry sectors' and
then on 'Alcohol Available for Consumption - ALC'.

Examples
~~~~~~~~

::

   data(grog)
   library(lattice)
   xyplot(Beer+Wine+Spirit ~ Year | Country, data=grog)
   xyplot(Beer+Wine+Spirit ~ Year, groups=Country, data=grog, outer=TRUE)
