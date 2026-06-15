=========== ===============
grouseticks R Documentation
=========== ===============

Data on red grouse ticks from Elston et al. 2001
------------------------------------------------

Description
~~~~~~~~~~~

Number of ticks on the heads of red grouse chicks sampled in the field
(``grouseticks``) and an aggregated version (``grouseticks_agg``); see
original source for more details

Usage
~~~~~

.. code:: R

   data(grouseticks)

Format
~~~~~~

``INDEX``
   (factor) chick number (observation level)

``TICKS``
   number of ticks sampled

``BROOD``
   (factor) brood number

``HEIGHT``
   height above sea level (meters)

``YEAR``
   year (-1900)

``LOCATION``
   (factor) geographic location code

``cHEIGHT``
   centered height, derived from ``HEIGHT``

``meanTICKS``
   mean number of ticks by brood

``varTICKS``
   variance of number of ticks by brood

Details
~~~~~~~

``grouseticks_agg`` is just a brood-level aggregation of the data

Source
~~~~~~

Robert Moss, via David Elston

References
~~~~~~~~~~

Elston DA, Moss R, Boulinier T, Arrowsmith C, Lambin X (2001). “Analysis
of aggregation, a worked example: numbers of ticks on red grouse
chicks.” *Parasitology*, **122**\ (5), 563–569.
`doi:10.1017/S0031182001007740 <https://doi.org/10.1017/S0031182001007740>`__.

Examples
~~~~~~~~

.. code:: R

   if (interactive()) {
   data(grouseticks)
   ## Figure 1a from Elston et al
   par(las=1,bty="l")
   tvec <- c(0,1,2,5,20,40,80)
   pvec <- c(4,1,3)
   with(grouseticks_agg,plot(1+meanTICKS~HEIGHT,
                     pch=pvec[factor(YEAR)],
                     log="y",axes=FALSE,
                     xlab="Altitude (m)",
                     ylab="Brood mean ticks"))
   axis(side=1)
   axis(side=2,at=tvec+1,label=tvec)
   box()
   abline(v=405,lty=2)
   ## Figure 1b
   with(grouseticks_agg,plot(varTICKS~meanTICKS,
                     pch=4,
                     xlab="Brood mean ticks",
                     ylab="Within-brood variance"))
   curve(1*x,from=0,to=70,add=TRUE)
   ## Model fitting
   form <- TICKS~YEAR+HEIGHT+(1|BROOD)+(1|INDEX)+(1|LOCATION)
   (full_mod1  <- glmer(form, family="poisson",data=grouseticks))
   }
