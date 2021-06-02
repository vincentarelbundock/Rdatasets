======= ===============
weather R Documentation
======= ===============

Hourly weather data
-------------------

Description
~~~~~~~~~~~

Hourly meterological data for LGA, JFK and EWR.

Usage
~~~~~

::

   weather

Format
~~~~~~

A data frame with columns:

origin
   Weather station. Named ``origin`` to facilitate merging with
   ``flights`` data.

year, month, day, hour
   Time of recording.

temp, dewp
   Temperature and dewpoint in F.

humid
   Relative humidity.

wind_dir, wind_speed, wind_gust
   Wind direction (in degrees), speed and gust speed (in mph).

precip
   Precipitation, in inches.

pressure
   Sea level pressure in millibars.

visib
   Visibility in miles.

time_hour
   Date and hour of the recording as a ``POSIXct`` date.

Source
~~~~~~

ASOS download from Iowa Environmental Mesonet,
https://mesonet.agron.iastate.edu/request/download.phtml.
