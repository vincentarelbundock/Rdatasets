============================ ===============
holtsmark.timothy.uniformity R Documentation
============================ ===============

Uniformity trial of timothy grass in Norway
-------------------------------------------

Description
~~~~~~~~~~~

Uniformity trial of timothy grass in Norway

Usage
~~~~~

.. code:: R

   data("holtsmark.timothy.uniformity")

Format
~~~~~~

A data frame with 240 observations on the following 3 variables.

``row``
   row

``col``
   column

``yield``
   yield per plot, kg

Details
~~~~~~~

The experiment was probably conducted shortly before 1898. Ehrenberg
says the data come from Norway.

The test plot was a 3-year old Timothy grass meadow, uniform to the eye.
The individual plots were square 1/16 are in size. An are is 10m x 10m,
so 1/16 are is 2.5m x 2.5m

Bastien Larsen sent the data to Ehrenberg, who published the plot
yields.

Field width: 40 plots \* 5 m = 200 m.

Field length: 6 plots \* 5 m = 30 m

Holtsmark & Larsen used this trial to compare standard deviations of
different sized plots (combined from smaller plots).

Note: The two datasets in agridat, holtsmark.timothy.uniformity and
larsen.timothy.uniformity refer to the same trial. Heatmaps show the
same trends for the two datasets. The 'larsen' data has been aggregated
2x2 to create the 'holtsmark' data. Both versions appear in published
papers and are included here.

Source
~~~~~~

Holtsmark, G and Larsen, B R (1905). Om Muligheder for at indskraenke de
Fejl, som ved Markforsog betinges af Jordens Uensartethed. Tidsskrift
for Landbrugets Planteavl. 12, 330-351. (In Danish) Data on page 347.
https://books.google.com/books?id=MdM0AQAAMAAJ&pg=PA330
https://dca.au.dk/publikationer/historiske/planteavl/

Holtsmark, G. and Bastian R. Larsen (1907) Uber die Fehler, welche bei
Feldversuchen, durch die Ungleichartigkeit des Bodens bedingt werden.
Die Landwirtschaftlichen Versuchs-Stationen, 65, 1–22. (In German)
https://books.google.com/books?id=eXA2AQAAMAAJ&pg=PA1

References
~~~~~~~~~~

Theodor Roemer (1920). Der Feldversuch. Page 67, table 11.
https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ

Larsen, B. R. (1898). Om metoder för fältförsök. Ber. Andra nordiska
Landsbrukskongressen in Stockholm 1897. P. 72-84. Discussion 85-94.
(document not found)

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(holtsmark.timothy.uniformity)
   dat <- holtsmark.timothy.uniformity

   # Define diagonal 'check' plots like Holtsmark does
   dat <- transform(dat,
                    check = ifelse(floor((row+col)/3)==(row+col)/3, "C", ""))
                    
   libs(desplot)
   desplot(dat, yield ~ col*row,
           flip=TRUE, text=check, show.key=FALSE,
           aspect=30/200, # true aspect
           main="holtsmark.timothy.uniformity")

   # sd(dat$yield) # 2.92 matches Holtsmark p. 348


   ## End(Not run)
