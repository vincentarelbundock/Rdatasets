=========== ===============
association R Documentation
=========== ===============

Simulated data for association plots
------------------------------------

Description
~~~~~~~~~~~

Simulated data set.

Usage
~~~~~

::

   association

Format
~~~~~~

A data frame with 121 observations on the following 4 variables.

x1
   a numeric vector

x2
   a numeric vector

x3
   a numeric vector

y1
   a numeric vector

y2
   a numeric vector

y3
   a numeric vector

y4
   a numeric vector

y5
   a numeric vector

y6
   a numeric vector

y7
   a numeric vector

y8
   a numeric vector

y9
   a numeric vector

y10
   a numeric vector

y11
   a numeric vector

y12
   a numeric vector

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(association, aes(x = x1, y = y1)) +
     geom_point()

   ggplot(association, aes(x = x2, y = y4)) +
     geom_point()

   ggplot(association, aes(x = x3, y = y7)) +
     geom_point()

