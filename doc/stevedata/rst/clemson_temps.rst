============= ===============
clemson_temps R Documentation
============= ===============

Daily Clemson Temperature Data
------------------------------

Description
~~~~~~~~~~~

This data set contains daily temperatures (highs) for Clemson, South
Carolina from Jan. 1, 1930 to the end of the most recent calendar year.
The goal is to update this periodically with new data for as long as I
live in this town.

Usage
~~~~~

::

   clemson_temps

Format
~~~~~~

A data frame with 32,777 observations on the following 8 variables.

``date``
   the date

``year``
   the year

``month``
   the month

``day``
   the day of the month

``yd``
   the day of the year

``station``
   the unique station identifier for NOAA

``value``
   the daily high in Celsius*10. I don't know why NOAA does it this way,
   but there you go.

``tmax``
   the daily high, adjusted to Fahrenheit

Details
~~~~~~~

Data obtained from NOAA, via the rnoaa package.
