==== ===============
LOTI R Documentation
==== ===============

Land-Ocean Temperature Index, 1880-2020
---------------------------------------

Description
~~~~~~~~~~~

These data contain monthly mean temperature anomalies expressed as
deviations from the corresponding 1951-1980 means. They are useful for
showing how we can measure climate change.

Usage
~~~~~

::

   LOTI

Format
~~~~~~

A data frame with 1,692 observations on the following 2 variables.

``date``
   a date, mostly to contain information for the year and month

``value``
   the mean temperature anomaly as deviation from corresponding
   1951-1980 mean

Details
~~~~~~~

Data are updated through most recent month, at least for last time I
updated it. Data represent combined land-surface air and sea-surface
water temperature anomalies. Of note: the day value in the ``date``
column has no real value. It was just a way of combining data that are
aggregated by year and month.

Source
~~~~~~

https://data.giss.nasa.gov/gistemp/
