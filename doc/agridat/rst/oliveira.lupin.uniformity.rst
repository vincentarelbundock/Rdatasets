========================= ===============
oliveira.lupin.uniformity R Documentation
========================= ===============

Uniformity trial of lupin in Portugal
-------------------------------------

Description
~~~~~~~~~~~

Uniformity trial of lupin in Portugal

Usage
~~~~~

.. code:: R

   data("oliveira.lupin.uniformity")

Format
~~~~~~

A data frame with 400 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield per plot, a numeric vector

Details
~~~~~~~

From Google translate:

p 214 The material for the present uniformity study consists of 400
plots of sweet lupin, each 5 meters long and spaced approximately 0.50 m
apart, collected separately from a field of that legume cultivated on
sheet A2 of the field at Quinta na Aldeia, in Sacavém (Portugal), during
the agricultural year 1943-1944 (Table A). As a previous crop, the land
had been planted with another lupin. Line sowing was done using
approximately 10 grams per 5 meter row; the rows were spaced end to end
by 0.60 meter spacing. There were, from the beginning, a number of
series of 5 m lines ; but for our study we only considered the part of
the field that seemed most homogeneous, which was made up of 10 series
of 40 lines each (Table A). Line 0 of all the series was quite depleted
and, therefore we excluded it.

In a small area of series 8, on the north side, blue lupin plants
appeared, which were also eliminated during that cleaning, and until
then there had been some competition with the sweet lupin plants.

The 1943/44 agricultural year was unfavorable for Lupinus luteus L. ...
resulting in very low production.

Field width: 10 series x 5m plots + 9 x .6m spacing = 55.4 m

Field length: 40 rows \* 0.5 m = 20 m

p 226b Table A, Number of plants and production (grams) of 400 plots of
Lupinus Luteus L.

Transcription details: Variously OCR and checked, or typed by K.Wright.

Source
~~~~~~

Oliveira, Augusto (1945). Ensaios de uniformidade: Estudio preliminar
com lupinus luteus L., em Sacavem. Agronomia Lusitana, 7, 207-244.
https://archive.org/details/agronomia-lusitana_1945_7_3/

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   library(agridat)
   data(oliveira.lupin.uniformity)
   dat <- oliveira.lupin.uniformity

   require(desplot)
   desplot(dat, yield ~ col*row,
           flip=TRUE, aspect=20/50, tick=TRUE,
           main="oliveira.lupin.uniformity")

   ## End(Not run)
