============== ===============
Cars93.summary R Documentation
============== ===============

A Summary of the Cars93 Data set
--------------------------------

Description
~~~~~~~~~~~

The ``Cars93.summary`` data frame has 6 rows and 4 columns created from
information in the ``Cars93`` data set in the Venables and Ripley MASS
package. Each row corresponds to a different class of car (e.g. Compact,
Large, etc.).

Usage
~~~~~

::

   Cars93.summary

Format
~~~~~~

This data frame contains the following columns:

Min.passengers
   minimum passenger capacity for each class of car

Max.passengers
   maximum passenger capacity for each class of car

No.of.cars
   number of cars in each class

abbrev
   a factor with levels ``C`` Compact, ``L`` Large, ``M`` Mid-Size,
   ``Sm`` Small, ``Sp`` Sporty, ``V`` Van

Source
~~~~~~

Lock, R. H. (1993) 1993 New Car Data. Journal of Statistics Education
1(1)

References
~~~~~~~~~~

MASS library

Examples
~~~~~~~~

::

   type <- Cars93.summary$abbrev
   type <- Cars93.summary[,4]
   type <- Cars93.summary[,"abbrev"]
   type <- Cars93.summary[[4]] # Take the object that is stored
                               # in the fourth list element.
   type
   pause()

   attach(Cars93.summary)
     # R can now access the columns of Cars93.summary directly
   abbrev
   detach("Cars93.summary")
   pause()

   #  To change the name of the \verb!abbrev! variable (the fourth column)
   names(Cars93.summary)[4] <- "code"
   pause()

   #  To change all of the names, try
   names(Cars93.summary) <- c("minpass","maxpass","number","code")

