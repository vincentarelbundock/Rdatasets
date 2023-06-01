.. container::

   ======== ===============
   daphnids R Documentation
   ======== ===============

   .. rubric:: Daphnia test
      :name: daphnids

   .. rubric:: Description
      :name: description

   The number of immobile daphnids –in contrast to mobile daphnids– out
   of a total of 20 daphnids was counted for several concentrations of a
   toxic substance.

   .. rubric:: Usage
      :name: usage

   ::

      data(daphnids)

   .. rubric:: Format
      :name: format

   A data frame with 16 observations on the following 4 variables.

   ``dose``
      a numeric vector

   ``no``
      a numeric vector

   ``total``
      a numeric vector

   ``time``
      a factor with levels ``24h`` ``48h``

   .. rubric:: Details
      :name: details

   The same daphnids were counted at 24h and later again at 48h.

   .. rubric:: Source
      :name: source

   Nina Cedergreen, Faculty of Life Sciences, University of Copenhagen,
   Denmark.

   .. rubric:: Examples
      :name: examples

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
