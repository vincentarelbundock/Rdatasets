============ ===============
Harman74.cor R Documentation
============ ===============

Harman Example 7.4
------------------

Description
~~~~~~~~~~~

A correlation matrix of 24 psychological tests given to 145 seventh and
eight-grade children in a Chicago suburb by Holzinger and Swineford.

Usage
~~~~~

::

   Harman74.cor

Source
~~~~~~

Harman, H. H. (1976) *Modern Factor Analysis*, Third Edition Revised,
University of Chicago Press, Table 7.4.

Examples
~~~~~~~~

::

   require(stats)
   (Harman74.FA <- factanal(factors = 1, covmat = Harman74.cor))
   for(factors in 2:5) print(update(Harman74.FA, factors = factors))
   Harman74.FA <- factanal(factors = 5, covmat = Harman74.cor,
                           rotation = "promax")
   print(Harman74.FA$loadings, sort = TRUE)
