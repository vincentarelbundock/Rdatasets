======== ===============
elastic2 R Documentation
======== ===============

Elastic Band Data Replicated Again
----------------------------------

Description
~~~~~~~~~~~

The ``elastic2`` data frame has 9 rows and 2 columns giving, for each
amount by which an elastic band is stretched over the end of a ruler,
the distance that the band traveled when released.

Usage
~~~~~

::

   elastic2

Format
~~~~~~

This data frame contains the following columns:

stretch
   the amount by which the elastic band was stretched

distance
   the distance traveled

Source
~~~~~~

J. H. Maindonald

Examples
~~~~~~~~

::

   plot(elastic2)
   pause()

   print("Chapter 5 Exercise")

   yrange <- range(c(elastic1$distance, elastic2$distance))
   xrange <- range(c(elastic1$stretch, elastic2$stretch))
   plot(distance ~ stretch, data = elastic1, pch = 16, ylim = yrange, xlim = 
   xrange)
   points(distance ~ stretch, data = elastic2, pch = 15, col = 2)
   legend(xrange[1], yrange[2], legend = c("Data set 1", "Data set 2"), pch = 
   c(16, 15), col = c(1, 2))

   elastic1.lm <- lm(distance ~ stretch, data = elastic1)
   elastic2.lm <- lm(distance ~ stretch, data = elastic2)
   abline(elastic1.lm)
   abline(elastic2.lm, col = 2)
   summary(elastic1.lm)
   summary(elastic2.lm)
   pause()

   predict(elastic1.lm, se.fit=TRUE)
   predict(elastic2.lm, se.fit=TRUE)
