========================= ===============
larsen.timothy.uniformity R Documentation
========================= ===============

Uniformity trial of timothy grass in Norway
-------------------------------------------

Description
~~~~~~~~~~~

Uniformity trial of timothy grass in Norway

Usage
~~~~~

.. code:: R

   data("larsen.timothy.uniformity")

Format
~~~~~~

A data frame with 960 observations on the following 3 variables.

``yield``
   plot yield, kg

``row``
   row ordinate

``col``
   column ordinate

Details
~~~~~~~

The experiment was probably conducted shortly before 1898. Ehrenberg
says the data come from Norway.

The test plot was a 3-year old Timothy grass meadow, uniform to the eye.
The individual plots were square 1/16 are in size. An are is 10m x 10m,
so 1/16 are is 2.5m x 2.5m

Bastien Larsen sent the data to Ehrenberg, who published the plot
yields. Although Ehrenberg does not give the dimensions of the entire
field, we can figure that out using 3 facts. Fact 1: The other
uniformity trials in Ehrenberg's paper are given column-wise. This was
determined by comparing those datasets with other published papers. Fact
2: When all the yield values in Ehrenberg are plotted in time-series
format, it is easy to seek peaks in the values that are 80 plots apart.
Only a heatmap of 12 plots by 80 plots has a reasonable amount of
"patchiness". All other heatmaps of different dimensions (e.g. 16x60,
20x40, 24x40, 30x32, 32x30, etc show streaks). Fact 3: The
holtsmark.timothy.uniformity data shows the same spatial pattern, but at
lower resolution.

Field width: 12 plots \* 2.5 m = 30 m

Field length: 80 plots \* 2.5 m = 200 m

Note: The two datasets in agridat, holtsmark.timothy.uniformity and
larsen.timothy.uniformity refer to the same trial. Heatmaps show the
same trends for the two datasets. The 'larsen' data has been aggregated
2x2 to create the 'holtsmark' data. Both versions appear in published
papers and are included here.

Source
~~~~~~

Ehrenberg, P. (1920). Versuch eines Beweises für die Anwendbarkeit der
Wahrscheinlichkeitsrechnung bei Feldversuchen. Die Landwirtschaflichen
versuchs-stationen, 95, 157-294. Table Ih. Page 254-276.
https://archive.org/details/dielandwirtschaf9519reun/page/156/
https://www.google.com/books/edition/Die_Landwirtschaftlichen_Versuchs_Statio/h9FGAAAAYAAJ

References
~~~~~~~~~~

Holtsmark, G and Larsen, B R (1905). Om Muligheder for at indskraenke de
Fejl, som ved Markforsog betinges af Jordens Uensartethed. Tidsskrift
for Landbrugets Planteavl. 12, 330-351. (In Danish)
https://books.google.com/books?id=MdM0AQAAMAAJ&pg=PA330
https://dca.au.dk/publikationer/historiske/planteavl/

Holtsmark, G. and Bastian R. Larsen (1907). Uber die Fehler, welche bei
Feldversuchen, durch die Ungleichartigkeit des Bodens bedingt werden.
Die Landwirtschaftlichen Versuchs-Stationen, 65, 1–22. (In German)
https://books.google.com/books?id=eXA2AQAAMAAJ&pg=PA1

Larsen, B. R. (1898). Om metoder för fältförsök. Ber. Andra nordiska
Landsbrukskongressen in Stockholm 1897. P. 72-84. Discussion 85-94.
(document not found)

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   data(larsen.timothy.uniformity)
   dat <- larsen.timothy.uniformity

   library(desplot)
   desplot(dat, yield~col*row,
           tick=TRUE, flip=TRUE, aspect=80/12,
           main="larsen.timothy.uniformity")

   ## End(Not run)
