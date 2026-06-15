======================= ===============
heath.radish.uniformity R Documentation
======================= ===============

Uniformity trial of radish
--------------------------

Description
~~~~~~~~~~~

Uniformity trial of radish in four containers.

Usage
~~~~~

.. code:: R

   data("heath.radish.uniformity")

Format
~~~~~~

A data frame with 400 observations on the following 4 variables.

``row``
   row

``col``
   column

``block``
   block

``yield``
   weight per plant, grams

Details
~~~~~~~

Weight of 399 radish plants grown at 1 inch x 1 inch spacing in four
plastic basins. Seed wetted 1968-02-15, planted 1968-02-17, harvested
1968-03-26.

Heath said, Most of the large plants were round the edges...one
important source of variation might have been competition for light.

Location if the experiment is unknown, but Heath was Professor of
Horticulture at the University of Reading, United Kingdom, so it is
likely the experiment was conducted in the U.K.

Source
~~~~~~

O.V.S. Heath (1970). Investigation by Experiment. Table 1, p 24-25.
https://archive.org/details/investigationbye0000heat

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     require(agridat)
     data(heath.radish.uniformity)
     dat <- heath.radish.uniformity
     libs(desplot, dplyr)
     desplot(dat, yield ~ col*row|block,
             aspect=1,
             main="heath.radish.uniformity")

     # Indicator for border/interior plants
     dat <- mutate(dat,
                   inner = row > 1 & row < 10 & col >  1 & col < 10)
     # Heath has 5.80 and 9.63 (we assume this is a typo of 9.36)
     dat <- group_by(dat, inner)
     summarize(dat, mean=mean(yield, na.rm=TRUE))
     # Interior plots are significantly lower yielding
     anova(aov(yield ~ block + inner, dat))
     # lattice::bwplot(yield ~ inner, dat, horiz=0)
     # similar to Heath fig 2-2
     # lattice::histogram( ~ yield|inner, dat, layout=c(1,2), n=20)

   ## End(Not run)
