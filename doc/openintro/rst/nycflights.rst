.. container::

   ========== ===============
   nycflights R Documentation
   ========== ===============

   .. rubric:: Flights data
      :name: flights-data

   .. rubric:: Description
      :name: description

   On-time data for a random sample of flights that departed NYC (i.e.
   JFK, LGA or EWR) in 2013.

   .. rubric:: Usage
      :name: usage

   ::

      nycflights

   .. rubric:: Format
      :name: format

   A tbl_df with 32,735 rows and 16 variables:

   year,month,day
      Date of departure.

   dep_time,arr_time
      Departure and arrival times, local tz.

   dep_delay,arr_delay
      Departure and arrival delays, in minutes. Negative times represent
      early departures/arrivals.

   hour,minute
      Time of departure broken in to hour and minutes.

   carrier
      Two letter carrier abbreviation. See ``airlines`` in the
      ``nycflights13`` package for more information or google the
      airline code.

   tailnum
      Plane tail number.

   flight
      Flight number.

   origin,dest
      Origin and destination. See ``airports`` in the ``nycflights13``
      package for more information or google airport the code.

   air_time
      Amount of time spent in the air.

   distance
      Distance flown.

   .. rubric:: Source
      :name: source

   Hadley Wickham (2014).
   `nycflights13 <https://CRAN.R-project.org/package=nycflights13>`__:
   Data about flights departing NYC in 2013. R package version 0.1.

   .. rubric:: Examples
      :name: examples

   ::

      library(dplyr)

      # Longest departure delays
      nycflights %>%
        select(flight, origin, dest, dep_delay, arr_delay) %>%
        arrange(desc(dep_delay))

      # Longest arrival delays
      nycflights %>%
        select(flight, origin, dest, dep_delay, arr_delay) %>%
        arrange(desc(arr_delay))
