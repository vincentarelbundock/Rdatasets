=========== ===============
hurricNamed R Documentation
=========== ===============

Named US Atlantic Hurricanes
----------------------------

Description
~~~~~~~~~~~

Details are given of atmospheric pressure at landfall, estimated damage
in millions of dollars, and deaths, for named hurricanes that made
landfall in the US mainland from 1950 through to 2012.

Usage
~~~~~

::

   data("hurricNamed")

Format
~~~~~~

A data frame with 94 observations on the following 11 variables.

``Name``
   Hurricane name

``Year``
   Numeric

``LF.WindsMPH``
   Maximum sustained windspeed (>= 1 minute) to occur along the US
   coast. Prior to 1980, this is estimated from the maximum windspeed
   associated with the Saffir-Simpson index at landfall. If 2 or more
   landfalls, the maximum is taken

``LF.PressureMB``
   Atmospheric pressure at landfall in millibars. If 2 or more
   landfalls, the minimum is taken

``LF.times``
   Date of first landfall

``BaseDam2014``
   Property damage (millions of 2014 US dollars)

``BaseDamage``
   Property damage (in millions of dollars for that year)

``NDAM2014``
   Damage, had hurricane appeared in 2014

``AffectedStates``
   Affected states (2-digit abbreviations), pasted together

``firstLF``
   Date of first landfall

``deaths``
   Number of continental US direct and indirect deaths

``mf``
   Gender of name; a factor with levels ``f`` ``m``

Details
~~~~~~~

An earlier version of these data was the subject of a controversial
paper that claimed to have found that hurricanes with female names,
presumably because taken less seriously, did more human damage after
adjusting for the severity of the storm than those with male names.

Source
~~~~~~

http://www.icatdamageestimator.com/ Deaths except for Audrey and
Katrina, are in the Excel file that is available from
http://www.pnas.org/content/suppl/2014/05/30/1402786111.DCSupplemental
NOAA Monthly Weather Reports (MWRs) supplied the numbers of deaths for
all except Donna, Celia, Audrey and Katrina. The figure for Celia is
from http://www.nhc.noaa.gov/pdf/NWS-TPC-5.pdf. For the other three
hurricanes it is from the Atlantic hurricane list in Wikipedia (see the
references.)

References
~~~~~~~~~~

http://www.icatdamageestimator.com/
https://www.aoml.noaa.gov/hrd/hurdat/mwr_pdf/
http://en.wikipedia.org/wiki/List_of_Atlantic_hurricanes
http://www.pnas.org/cgi/doi/10.1073/pnas.1402786111

Examples
~~~~~~~~

::

   data(hurricNamed)
   str(hurricNamed)
   plot(log(deaths+0.5) ~ log(NDAM2014), data=hurricNamed)
   with(hurricNamed, lines(lowess(log(deaths+0.5) ~ log(NDAM2014))))
   plot(log(deaths+0.5) ~ I(NDAM2014^0.14), data=hurricNamed)
   with(hurricNamed, lines(lowess(log(deaths+0.1) ~ I(NDAM2014^0.14))))
