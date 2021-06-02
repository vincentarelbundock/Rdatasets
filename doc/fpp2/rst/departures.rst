========== ===============
departures R Documentation
========== ===============

Total monthly departures from Australia
---------------------------------------

Description
~~~~~~~~~~~

Overseas departures from Australia: permanent departures, long-term
(more than one year) residents departing, long-term (more than one year)
visitors departing, short-term (less than one year) residents departing
and short-term (less than one year) visitors departing. January 1976 -
November 2016.

Format
~~~~~~

Multiple monthly time series of class ``mts`` containing the following
series:

========= ==============================================
permanent permanent departures from Australia.
reslong   long-term resident departures from Australia.
vislong   long-term visitor departures from Australia.
resshort  short-term resident departures from Australia.
visshort  short-term visitor departures from Australia.
========= ==============================================

Source
~~~~~~

Australian Bureau of Statistics. Catalogue No 3401.02.

Examples
~~~~~~~~

::


   autoplot(departures, facets=TRUE)

