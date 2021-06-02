===== ===============
algae R Documentation
===== ===============

Volume of algae as function of increasing concentrations of a herbicide
-----------------------------------------------------------------------

Description
~~~~~~~~~~~

Dataset from an experiment exploring the effect of increasing
concentrations of a herbicide on the volume of the treated algae.

Usage
~~~~~

::

   data(algae)

Format
~~~~~~

A data frame with 14 observations on the following 2 variables.

``conc``
   a numeric vector of concentrations.

``vol``
   a numeric vector of response values, that is relative change in
   volume.

Details
~~~~~~~

This datasets requires a cubic root transformation in order to stabilise
the variance.

Source
~~~~~~

Meister, R. and van den Brink, P. (2000) *The Analysis of Laboratory
Toxicity Experiments*, Chapter 4 in *Statistics in Ecotoxicology*,
Editor: T. Sparks, New York: John Wiley \\& Sons, (pp. 114–116).

Examples
~~~~~~~~

::


   algae.m1 <- drm(vol~conc, data=algae, fct=LL.3())
   summary(algae.m1)

   algae.m2 <- boxcox(algae.m1)
   summary(algae.m2)

