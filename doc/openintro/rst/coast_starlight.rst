=============== ===============
coast_starlight R Documentation
=============== ===============

Coast Starlight Amtrak train
----------------------------

Description
~~~~~~~~~~~

Travel times and distances.

Usage
~~~~~

::

   coast_starlight

Format
~~~~~~

A data frame with 16 observations on the following 3 variables.

station
   Station.

dist
   Distance.

travel_time
   Travel time.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(coast_starlight, aes(x = dist, y = travel_time)) +
     geom_point()

