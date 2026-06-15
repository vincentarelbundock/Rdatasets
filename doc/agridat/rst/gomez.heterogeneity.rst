=================== ===============
gomez.heterogeneity R Documentation
=================== ===============

RCB experiment of rice, heterogeneity of regressions
----------------------------------------------------

Description
~~~~~~~~~~~

RCB experiment of rice, heterogeneity of regressions

Usage
~~~~~

.. code:: R

   data("gomez.heterogeneity")

Format
~~~~~~

``gen``
   genotype

``yield``
   yield kg/ha

``tillers``
   tillers no/hill

Details
~~~~~~~

An experiment with 3 genotypes to examine the relationship of yield to
number of tillers.

Used with permission of Kwanchai Gomez.

Source
~~~~~~

Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
Agricultural Research. Wiley-Interscience. Page 377.

References
~~~~~~~~~~

None.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(gomez.heterogeneity)
   dat <- gomez.heterogeneity

     libs(lattice)
     xyplot(yield ~ tillers, dat, groups=gen,
            type=c("p","r"),
            main="gomez.heterogeneity")

   ## End(Not run)
