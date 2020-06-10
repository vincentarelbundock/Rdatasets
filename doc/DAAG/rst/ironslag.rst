======== ===============
ironslag R Documentation
======== ===============

Iron Content Measurements
-------------------------

Description
~~~~~~~~~~~

The ``ironslag`` data frame has 53 rows and 2 columns. Two methods for
measuring the iron content in samples of slag were compared, a chemical
and a magnetic method. The chemical method requires greater effort than
the magnetic method.

Usage
~~~~~

::

   ironslag

Format
~~~~~~

This data frame contains the following columns:

chemical
   a numeric vector containing the measurements coming from the chemical
   method

magnetic
   a numeric vector containing the measurments coming from the magnetic
   method

Source
~~~~~~

Hand, D.J., Daly, F., McConway, K., Lunn, D., and Ostrowski, E. eds
(1993) A Handbook of Small Data Sets. London: Chapman & Hall.

Examples
~~~~~~~~

::

   iron.lm <- lm(chemical ~ magnetic, data = ironslag)
   oldpar <- par(mfrow = c(2,2))
   plot(iron.lm)
   par(oldpar)
