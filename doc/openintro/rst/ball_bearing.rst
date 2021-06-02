============ ===============
ball_bearing R Documentation
============ ===============

Lifespan of ball bearings
-------------------------

Description
~~~~~~~~~~~

A simulated data set on lifespan of ball bearings.

Usage
~~~~~

::

   ball_bearing

Format
~~~~~~

A data frame with 75 observations on the following variable.

life_span
   Lifespan of ball bearings (in hours).

Source
~~~~~~

Simulated data.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(ball_bearing, aes(x = life_span)) +
     geom_histogram(binwidth = 1)

   qqnorm(ball_bearing$life_span)

