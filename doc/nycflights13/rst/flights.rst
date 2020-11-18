======= ===============
flights R Documentation
======= ===============

Flights data
------------

Description
~~~~~~~~~~~

On-time data for all flights that departed NYC (i.e. JFK, LGA or EWR) in
2013.

Usage
~~~~~

::

   flights

Format
~~~~~~

Data frame with columns

year, month, day
   Date of departure.

dep_time, arr_time
   Actual departure and arrival times (format HHMM or HMM), local tz.

sched_dep_time, sched_arr_time
   Scheduled departure and arrival times (format HHMM or HMM), local tz.

dep_delay, arr_delay
   Departure and arrival delays, in minutes. Negative times represent
   early departures/arrivals.

carrier
   Two letter carrier abbreviation. See ``airlines`` to get name.

flight
   Flight number.

tailnum
   Plane tail number. See ``planes`` for additional metadata.

origin, dest
   Origin and destination. See ``airports`` for additional metadata.

air_time
   Amount of time spent in the air, in minutes.

distance
   Distance between airports, in miles.

hour, minute
   Time of scheduled departure broken into hour and minutes.

time_hour
   Scheduled date and hour of the flight as a ``POSIXct`` date. Along
   with ``origin``, can be used to join flights data to ``weather``
   data.

Source
~~~~~~

RITA, Bureau of transportation statistics,
https://www.transtats.bts.gov/DL_SelectFields.asp?Table_ID=236
