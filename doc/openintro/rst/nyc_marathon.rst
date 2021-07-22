============ ===============
nyc_marathon R Documentation
============ ===============

New York City Marathon Times
----------------------------

Description
~~~~~~~~~~~

Marathon times of runners in the Men and Women divisions of the New York
City Marathon, 1970 - 2020.

Usage
~~~~~

::

   nyc_marathon

Format
~~~~~~

A data frame with 102 observations on the following 7 variables.

year
   Year of marathom.

name
   Name of winner.

country
   Country of winner.

time
   Running time (HH:MM:SS).

time_hrs
   Running time (in hours).

division
   Division: ``Men`` or ``Women``.

note
   Note about the race or the winning time.

Source
~~~~~~

Wikipedia, `List of winners of the New York City
Marathon <https://en.wikipedia.org/wiki/List_of_winners_of_the_New_York_City_Marathon>`__.
Retrieved 28 April, 2021.

Examples
~~~~~~~~

::

   library(ggplot2)

   ggplot(nyc_marathon, aes(x = year, y = time_hrs, color = division, shape = division)) +
     geom_point()
