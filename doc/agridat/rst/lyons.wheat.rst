=========== ===============
lyons.wheat R Documentation
=========== ===============

Multi-environment trial of winter wheat at 12 sites in 4 years.
---------------------------------------------------------------

Description
~~~~~~~~~~~

Yield of winter wheat at 12 sites in 4 years.

Format
~~~~~~

A data frame with 48 observations on the following 3 variables.

``loc``
   location, 12 levels

``year``
   year, numeric

``yield``
   yield (kg)

Details
~~~~~~~

Krzanowski uses this briefly for multi-dimensional scaling.

Source
~~~~~~

R. Lyons (1980). A review of multidimensional scaling. Unpublished M.Sc.
dissertation, University of Reading.

References
~~~~~~~~~~

Krzanowski, W.J. (1988) *Principles of multivariate analysis*. Oxford
University Press.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(lyons.wheat)
   dat <- lyons.wheat

   libs(lattice)
   xyplot(yield~factor(year), dat, group=loc,
     main="lyons.wheat",
     auto.key=list(columns=4), type=c('p','l'))

   ## End(Not run)
