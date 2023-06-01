.. container::

   ========== ===============
   earthworms R Documentation
   ========== ===============

   .. rubric:: Earthworm toxicity test
      :name: earthworms

   .. rubric:: Description
      :name: description

   The dataset was obtained from a toxicity test using earthworms, and
   it contains the number of earthworms remaining in a container that
   was contaminated with a toxic substance (not disclosed) at various
   doses; so the number of earthworms not migrating to the neighbouring
   uncontaminated container.

   .. rubric:: Usage
      :name: usage

   ::

      data(earthworms)

   .. rubric:: Format
      :name: format

   A data frame with 35 observations on the following 3 variables.

   ``dose``
      a numeric vector of dose values

   ``number``
      a numeric vector containing counts of remaining earthworms in the
      container

   ``total``
      a numeric vector containing total number of earthworms put in the
      containers

   .. rubric:: Details
      :name: details

   At dose 0 around half of the earthworms is expected be in each of the
   two containers. Thus it is not appropriate to fit an ordinary
   logistic regression with log(dose) as explanatory variable to these
   data as it implies an upper limit of 1 at dose 0 and in fact this
   model does not utilise the observations at dose 0 (see the example
   section below).

   .. rubric:: Source
      :name: source

   The dataset is kindly provided by Nina Cedergreen, Faculty of Life
   Sciences, University of Copenhagen, Denmark.

   .. rubric:: Examples
      :name: examples

   ::

      ## Fitting a logistic regression model
      earthworms.m1 <- drm(number/total~dose, weights = total, data = earthworms,
      fct = LL.2(), type = "binomial")
      modelFit(earthworms.m1)  # a crude goodness-of-fit test

      ## Fitting an extended logistic regression model 
      ##  where the upper limit is estimated
      earthworms.m2 <- drm(number/total~dose, weights = total, data = earthworms,
      fct = LL.3(), type = "binomial")
      modelFit(earthworms.m2)  # goodness-of-fit test
      # improvement not visible in test!!!

      ## Comparing model1 and model2 
      ## (Can the first model be reduced to the second model?)
      anova(earthworms.m1, earthworms.m2)
