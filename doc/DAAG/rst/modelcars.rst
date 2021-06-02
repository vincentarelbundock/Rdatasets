========= ===============
modelcars R Documentation
========= ===============

Model Car Data
--------------

Description
~~~~~~~~~~~

The ``modelcars`` data frame has 12 rows and 2 columns. The data are for
an experiment in which a model car was released three times at each of
four different distances up a 20 degree ramp. The experimenter recorded
distances traveled from the bottom of the ramp across a concrete floor.

Usage
~~~~~

::

   modelcars

Format
~~~~~~

This data frame contains the following columns:

distance.traveled
   a numeric vector consisting of the lengths traveled (in cm)

starting.point
   a numeric vector consisting of the distance of the starting point
   from the top of the ramp (in cm)

Source
~~~~~~

W.J. Braun

Examples
~~~~~~~~

::

   plot(modelcars)
   modelcars.lm <- lm(distance.traveled ~ starting.point, data=modelcars)
   aov(modelcars.lm)
   pause()

   print("Response Curves - Example 4.6")
   attach(modelcars)
   stripchart(distance.traveled ~ starting.point, vertical=TRUE, pch=15,
              xlab = "Distance up ramp", ylab="Distance traveled")
   detach(modelcars)

