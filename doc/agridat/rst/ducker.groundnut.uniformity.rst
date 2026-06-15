=========================== ===============
ducker.groundnut.uniformity R Documentation
=========================== ===============

Uniformity trial of groundnut
-----------------------------

Description
~~~~~~~~~~~

Uniformity trial of groundnut.

Usage
~~~~~

.. code:: R

   data("ducker.groundnut.uniformity")

Format
~~~~~~

A data frame with 215 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield, pounds per plot

Details
~~~~~~~

The experiment was grown in Nyasaland, Cotton Experiment Station, Domira
Bay, 1942-43. There were 44x5 identical plots, each 1/220 acre in area.
Single ridge plots each one chain in length, and one yard apart. Two
rows of groundnuts are planted per ridge, staggered at 1 foot between
holes. Holes are spaced 18 inches x 12 inches. Two seeds are planted per
hole.

The yield values are pounds of nuts in shell.

Field length: 5 plots, 22 yards each = 110 yards.

Field width: 44 plots, 1 yard each = 44 yards.

This data was made available with special help from the staff at
Rothamsted Research Library.

Transcription details: Data typed by K.Wright and checked by hand.

Source
~~~~~~

Rothamsted Research Library, Box STATS17 WG Cochran, Folder 2.

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     library(agridat)
     data(ducker.groundnut.uniformity)
     dat <- ducker.groundnut.uniformity
     libs(desplot)
     desplot(dat, yield ~ col*row,
             flip=TRUE, aspect=110/44,
             main="ducker.groundnut.uniformity")

   ## End(Not run)
