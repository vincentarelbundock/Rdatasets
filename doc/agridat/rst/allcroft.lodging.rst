================ ===============
allcroft.lodging R Documentation
================ ===============

Multi-environment trial of cereal with lodging data
---------------------------------------------------

Description
~~~~~~~~~~~

Percent lodging is given for 32 genotypes at 7 environments.

Format
~~~~~~

A data frame with 224 observations on the following 3 variables.

``env``
   environment, 1-7

``gen``
   genotype, 1-32

``y``
   percent lodged

Details
~~~~~~~

This data is for the first year of a three-year study.

Used with permission of Chris Glasbey.

Source
~~~~~~

D. J. Allcroft and C. A. Glasbey, 2003. Analysis of crop lodging using a
latent variable model. Journal of Agricultural Science, 140, 383–393.
https://doi.org/10.1017/S0021859603003332

Examples
~~~~~~~~

.. code:: R

   ## Not run: 

   library(agridat)
   data(allcroft.lodging)
   dat <- allcroft.lodging

   # Transformation
   dat$sy <- sqrt(dat$y)
   # Variety 4 has no lodging anywhere, so add a small amount
   dat[dat$env=='E5' & dat$gen=='G04',]$sy <- .01

   libs(lattice)
   dotplot(env~y|gen, dat, as.table=TRUE,
           xlab="Percent lodged (by genotype)", ylab="Variety",
           main="allcroft.lodging")

   # Tobit model
   libs(AER)
   m3 <- tobit(sy ~ 1 + gen + env, left=0, right=100, data=dat)

   # Table 2 trial/variety means
   preds <- expand.grid(gen=levels(dat$gen), env=levels(dat$env))
   preds$pred <- predict(m3, newdata=preds)
   round(tapply(preds$pred, preds$gen, mean),2)
   round(tapply(preds$pred, preds$env, mean),2)


   ## End(Not run)
