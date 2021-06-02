=========== ===============
Arabidopsis R Documentation
=========== ===============

Arabidopsis clipping/fertilization data
---------------------------------------

Description
~~~~~~~~~~~

Data on genetic variation in responses to fertilization and simulated
herbivory in *Arabidopsis*

Usage
~~~~~

::

   data("Arabidopsis")

Format
~~~~~~

A data frame with 625 observations on the following 8 variables.

``reg``
   region: a factor with 3 levels ``NL`` (Netherlands), ``SP`` (Spain),
   ``SW`` (Sweden)

``popu``
   population: a factor with the form ``n.R`` representing a population
   in region ``R``

``gen``
   genotype: a factor with 24 (numeric-valued) levels

``rack``
   a nuisance factor with 2 levels, one for each of two greenhouse racks

``nutrient``
   fertilization treatment/nutrient level (1, minimal nutrients or 8,
   added nutrients)

``amd``
   simulated herbivory or "clipping" (apical meristem damage):
   ``unclipped`` (baseline) or ``clipped``

``status``
   a nuisance factor for germination method (``Normal``,
   ``Petri.Plate``, or ``Transplant``)

``total.fruits``
   total fruit set per plant (integer)

Source
~~~~~~

From Josh Banta

References
~~~~~~~~~~

Joshua A. Banta, Martin H. H Stevens, and Massimo Pigliucci (2010) A
comprehensive test of the 'limiting resources' framework applied to
plant tolerance to apical meristem damage. *Oikos* **119**\ (2),
359–369; doi:
`10.1111/j.1600-0706.2009.17726.x <https://doi.org/10.1111/j.1600-0706.2009.17726.x>`__

Examples
~~~~~~~~

::

   data(Arabidopsis)
   summary(Arabidopsis[,"total.fruits"])
   table(gsub("[0-9].","",levels(Arabidopsis[,"popu"])))
   library(lattice)
   stripplot(log(total.fruits+1) ~ amd|nutrient, data = Arabidopsis,
             groups = gen,
             strip=strip.custom(strip.names=c(TRUE,TRUE)),
             type=c('p','a'), ## points and panel-average value --
             ## see ?panel.xyplot
             scales=list(x=list(rot=90)),
             main="Panel: nutrient, Color: genotype")
