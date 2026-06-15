======================== ===============
beckett.maize.uniformity R Documentation
======================== ===============

A uniformity trial of maize in Ghana.
-------------------------------------

Description
~~~~~~~~~~~

A uniformity trial of maize in Ghana.

Usage
~~~~~

.. code:: R

   data("beckett.maize.uniformity")

Format
~~~~~~

A data frame with 83 observations on the following 8 variables.

``plot``
   plot number

``row``
   row ordinate

``col``
   column ordinate

``germination``
   germination count

``earnum``
   number of ears per plot

``earwt``
   ear weight per plot

``yield``
   grain yield per plot, pounds

``stalks``
   number of stalks per plot

Details
~~~~~~~

Experiment at the Asuansi Experiment Station (Ghana). Each plot is 1/40
acre, square in shape, 33 x 33 feet. Seed was sown in 23 March 1928,
four seeds per hole. Holes were 3 feet by 3 feet, giving 121
stands/hills per plot. Germination data collected 3-4 April. Counts of
stalks were made 23 May, but "reliance is not attached to these
figures". Harvesting was done 16-17 August. Due to staff shortages, only
15 plots chosen at random were measured for ears and yield.

Field width: 6 plots \* 33 feet = 198 feet

Field length: 19 plots \* 33 feet = 627 feet

Transcription details: Data typed by hand and checked by K.Wright
2024.12.06.

Source
~~~~~~

Beckett, W.H.; Fletcher, S.R.B. (1929). A uniformity trial with maize.
Gold Coast Dept Agric Bull 16: 222-226.
https://babel.hathitrust.org/cgi/pt?id=coo.31924066682166&seq=470

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     libs(agridat)
     data(beckett.maize.uniformity)
     dat <- beckett.maize.uniformity
     
     # QC. germination, earnum match published values.
     # stalks published value is 33091, but here 33101. (Data were hand-checked)
     colSums(dat)

     # Examine correlations. earwt,yield high cor
     pairs(dat[ , c("germination","stalks","earnum","earwt","yield")])

     libs(desplot)
     desplot(dat, germination ~ col*row,
             flip=TRUE, aspect=19/6,
             main="beckett.maize.uniformity - stalks")
     desplot(dat, yield ~ col*row,
             flip=TRUE, aspect=19/6,
             main="beckett.maize.uniformity - yield")

   ## End(Not run)
