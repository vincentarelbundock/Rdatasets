================ ===============
ratkowsky.onions R Documentation
================ ===============

Onion yields for different densities at two locations
-----------------------------------------------------

Description
~~~~~~~~~~~

Onion yields for different densities at two locations

Format
~~~~~~

This data frame contains the following columns:

density
   planting density (plants per square meter)

yield
   yield (g / plant)

loc
   location, Purnong Landing or Virginia

Details
~~~~~~~

Spanish white onions.

Source
~~~~~~

Ratkowsky, D. A. (1983). *Nonlinear Regression Modeling: A Unified
Practical Approach.* New York: Marcel Dekker.

References
~~~~~~~~~~

Ruppert, D., Wand, M.P. and Carroll, R.J. (2003). *Semiparametric
Regression*. Cambridge University Press.
https://stat.tamu.edu/~carroll/semiregbook/

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(ratkowsky.onions)
   dat <- ratkowsky.onions

   # Model inverse yield as a quadratic.  Could be better...
   libs(lattice)
   dat <- transform(dat, iyield = 1/yield)
   m1 <- lm(iyield ~ I(density^2)*loc, dat)
   dat$pred <- predict(m1)

   libs(latticeExtra)
   foo <- xyplot(iyield ~ density, data=dat, group=loc, auto.key=TRUE,
                  main="ratkowski.onions",ylab="Inverse yield")
   foo + xyplot(pred ~ density, data=dat, group=loc, type='l')


   ## End(Not run)
