======= ===============
credits R Documentation
======= ===============

College credits.
----------------

Description
~~~~~~~~~~~

A simulated data set of number of credits taken by college students each
semester.

Usage
~~~~~

::

   credits

Format
~~~~~~

A data frame with 100 observations on the following variable.

credits
   Number of credits.

Source
~~~~~~

Simulated data.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(credits, aes(x = credits)) +
     geom_histogram(binwidth = 1)
