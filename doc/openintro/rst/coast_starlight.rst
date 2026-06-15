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

.. code:: R

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

.. code:: R


   library(ggplot2)

   ggplot(coast_starlight, aes(x = dist, y = travel_time)) +
     geom_point()
