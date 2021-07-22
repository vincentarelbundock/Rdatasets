======== ===============
marathon R Documentation
======== ===============

New York City Marathon Times (outdated)
---------------------------------------

Description
~~~~~~~~~~~

Marathon times of male and female winners of the New York City Marathon
1970-1999. See nyc_marathon for a more updated dataset.

Usage
~~~~~

::

   marathon

Format
~~~~~~

A data frame with 60 observations on the following 3 variables.

year
   Year

gender
   Gender

time
   Running time (in hours)

Source
~~~~~~

https://www.webcitation.org/5kx7ilFLp

Examples
~~~~~~~~

::

   library(ggplot2)

   ggplot(marathon, aes(x = time)) +
     geom_histogram(binwidth = 0.15)

   ggplot(marathon, aes(y = time, x = gender)) +
     geom_boxplot()
