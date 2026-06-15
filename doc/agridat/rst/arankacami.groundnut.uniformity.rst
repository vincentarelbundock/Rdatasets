=============================== ===============
arankacami.groundnut.uniformity R Documentation
=============================== ===============

Uniformity trial of groundnut
-----------------------------

Description
~~~~~~~~~~~

Uniformity trial of groundnut

Usage
~~~~~

.. code:: R

   data("arankacami.groundnut.uniformity")

Format
~~~~~~

A data frame with 96 observations on the following 3 variables.

``row``
   row

``col``
   column

``yield``
   yield, kg/plot

Details
~~~~~~~

The year of the experiment is unknown, but before 1995.

Basic plot size is 0.75 m (rows) x 4 m (columns).

Source
~~~~~~

Ira Arankacami, R. Rangaswamy. (1995). A Text Book of Agricultural
Statistics. New Age International Publishers. Table 19.1. Page 237.
https://www.google.com/books/edition/A_Text_Book_of_Agricultural_Statistics/QDLWE4oakSgC

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   library(agridat)
   data(arankacami.groundnut.uniformity)
   dat <- arankacami.groundnut.uniformity

   require(desplot)
   desplot(dat, yield ~ col*row,
           flip=TRUE, aspect=(12*.75)/(8*4),
           main="arankacami.groundnut.uniformity")


   ## End(Not run)
