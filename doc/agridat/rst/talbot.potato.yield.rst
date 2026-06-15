============= ===============
talbot.potato R Documentation
============= ===============

Multi-environment trial of potato in UK, yields and trait scores at 12 locations
--------------------------------------------------------------------------------

Description
~~~~~~~~~~~

Yield and 14 trait scores for each of 9 potato varieties at 12 locations
in UK.

Usage
~~~~~

.. code:: R

   data("talbot.potato.traits")
   data("talbot.potato.yield")

Format
~~~~~~

The ``talbot.potato.yield`` dataframe has 126 observations on the
following 3 variables.

``gen``
   genotype/variety

``trait``
   trait

``score``
   trait score, 1-9

The ``talbot.potato.yield`` dataframe has 108 observations on the
following 3 variables.

``gen``
   genotype/variety

``loc``
   location/center

``yield``
   yield, t/ha

Details
~~~~~~~

The ``talbot.potato.yield`` dataframe contains mean tuber yields (t/ha)
of 9 varieties of potato at 12 centers in the United Kingdom over five
years 1983-1987. The following abbreviations are used for the centers.

== =================
BU Bush
CA Cambridge
CB Conon Bridge
CC Crossacreevy
CP Cockle Park
CR Craibstone
GR Greenmount
HA Harper Adams
MO Morley
RO Rosemaund
SB Sutton Bonnington
TE Terrington
   
== =================

Used with permission of Mike Talbot.

Source
~~~~~~

Mike Talbot and A V Wheelwright, 1989, The analysis of genotype x
analysis interactions by partial least squares regression. Biuletyn
Oceny Odmian, 21/22, 19–25.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)

   libs(pls, reshape2)

   data(talbot.potato.traits)
   datt <- talbot.potato.traits
   data(talbot.potato.yield)
   daty <- talbot.potato.yield

   datt <- acast(datt, gen ~ trait, value.var='score')
   daty <- acast(daty, gen ~ loc, value.var='yield')  

   # Transform columns to zero mean and unit variance
   datt <- scale(datt)
   daty <- scale(daty)

   m1 <- plsr(daty ~ datt, ncomp=3)
   summary(m1)

   # Loadings factor 1
   lo <- loadings(m1)[,1,drop=FALSE]
   round(-1*lo[order(-1*lo),1,drop=FALSE],2)

   biplot(m1, main="talbot.potato - biplot")


   ## End(Not run)
