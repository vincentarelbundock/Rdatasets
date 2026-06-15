=========== ===============
kirk.potato R Documentation
=========== ===============

Variety trial of potatoes, highly replicated
--------------------------------------------

Description
~~~~~~~~~~~

Variety trial of potatoes, highly replicated

Usage
~~~~~

.. code:: R

   data("kirk.potato")

Format
~~~~~~

A data frame with 380 observations on the following 5 variables.

``row``
   row ordinate

``col``
   column ordinate

``rep``
   replicate (not block)

``gen``
   genotype (variety)

``yield``
   yield, pounds per plot

Details
~~~~~~~

A highly-replicated variety trial of potatoes planted in 1924 with check
plots every 5th row. Entries were not randomized. The rod rows were
planted in series across the field, the rows spaced five links apart
(nearly 3.5 feet) and with 3.5 foot passes between the series.

The replicates are sometimes dis-jointed, so are not really blocks.

Source
~~~~~~

Kirk, L. E. and C. H. Goulden (1925) Some statistical observations on a
yield test of potato varieties. Scientific Agriculture, 6, 89-97.
https://www.google.com/books/edition/Canadian_Journal_of_Agriculture_Science/TgIkAQAAMAAJ

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     library(agridat)
     data(kirk.potato)
     dat <- kirk.potato
     libs(desplot)
     desplot(dat, yield ~ col*row,
             flip=TRUE, aspect=1,
             main="kirk.potato")

     # Match means in Table I
     libs(dplyr)
     dat 

   ## End(Not run)
