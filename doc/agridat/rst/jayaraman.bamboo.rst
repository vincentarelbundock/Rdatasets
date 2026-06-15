================ ===============
jayaraman.bamboo R Documentation
================ ===============

Bamboo progeny trial
--------------------

Description
~~~~~~~~~~~

Bamboo progeny trial in 2 locations, 3 blocks

Usage
~~~~~

.. code:: R

   data("jayaraman.bamboo")

Format
~~~~~~

A data frame with 216 observations on the following 5 variables.

``loc``
   location factor

``block``
   block factor

``tree``
   tree factor

``family``
   family factor

``height``
   height, cm

Details
~~~~~~~

Data from a replicated trial of bamboo at two locations in Kerala,
India. Each location had 3 blocks. In each block were 6 families, with 6
trees in each family.

Source
~~~~~~

K. Jayaraman (1999). "A Statistical Manual For Forestry Research".
Forestry Research Support Programme for Asia and the Pacific. Page 170.

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     library(agridat)
     data(jayaraman.bamboo)
     dat <- jayaraman.bamboo

     # very surprising differences between locations
     libs(lattice)
     bwplot(height ~ family|loc, dat, main="jayaraman.bamboo")
     # match Jayarman's anova table 6.3, page 173
     # m1 <- aov(height ~ loc+loc:block + family + family:loc +
     #  family:loc:block, data=dat)
     # anova(m1)

     # more modern approach with mixed model, match variance components needed
     # for equation 6.9, heritability of the half-sib averages as
     m2 <- lme4::lmer(height ~ 1 + (1|loc/block) + (1|family/loc/block), data=dat)
     lucid::vc(m2)

   ## End(Not run)
