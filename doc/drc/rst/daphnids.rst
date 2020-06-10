======== ===============
daphnids R Documentation
======== ===============

Daphnia test
------------

Description
~~~~~~~~~~~

The number of immobile daphnids –in contrast to mobile daphnids– out of
a total of 20 daphnids was counted for several concentrations of a toxic
substance.

Usage
~~~~~

::

   data(daphnids)

Format
~~~~~~

A data frame with 16 observations on the following 4 variables.

``dose``
   a numeric vector

``no``
   a numeric vector

``total``
   a numeric vector

``time``
   a factor with levels ``24h`` ``48h``

Details
~~~~~~~

The same daphnids were counted at 24h and later again at 48h.

Source
~~~~~~

Nina Cedergreen, Faculty of Life Sciences, University of Copenhagen,
Denmark.

Examples
~~~~~~~~

::


   ## Fitting a model with different parameters
   ## for different curves
   daphnids.m1 <- drm(no/total~dose, time, weights = total, 
   data = daphnids, fct = LL.2(), type = "binomial")

   ## Goodness-of-fit test
   modelFit(daphnids.m1)

   ## Summary of the data
   summary(daphnids.m1)

   ## Fitting a model with a common intercept parameter
   daphnids.m2 <- drm(no/total~dose, time, weights = total, 
   data = daphnids, fct = LL.2(), type = "binomial", 
   pmodels = list(~1, ~time))
