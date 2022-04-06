.. container::

   ====== ===============
   auxins R Documentation
   ====== ===============

   .. rubric:: Effect of technical grade and commercially formulated
      auxin herbicides
      :name: effect-of-technical-grade-and-commercially-formulated-auxin-herbicides

   .. rubric:: Description
      :name: description

   MCPA, 2,4-D, mecorprop and dichorlprop were applied either as
   technical grades materials (h = 1, 2, 3, 4) or as commercial
   formulations (herb = 5, 6, 7, 8). Each experimental unit consisted of
   five 1-week old seedlings grown together in a pot of nutrient
   solution during 14 days.

   .. rubric:: Usage
      :name: usage

   ::

      data(auxins)

   .. rubric:: Format
      :name: format

   A data frame with 150 observations on the following 5 variables.

   ``r``
      a numeric vector

   ``h``
      a numeric vector

   ``w``
      a numeric vector

   ``y``
      a numeric vector

   ``dose``
      a numeric vector

   .. rubric:: Details
      :name: details

   Data are parts of a larger joint action experiment with various
   herbicides.

   The eight herbicide preparations are naturally grouped into four
   pairs: (1, 5), (2, 6), (3, 7), and (4, 8), and in each pair of
   herbicides should have the same active ingredients but different
   formulation constituents, which were assumed to be biologically
   inert. The data consist of the 150 observations y of dry weights,
   each observation being the weight of five plants grown in the same
   pot. All the eight herbicide preparations have essentially the same
   mode of action in the plant; they all act like the plant auxins,
   which are plant regulators that affect cell enlongation an other
   essential metabolic pathways. One of the objects of the experiment
   was to test if the response functions were identical except for a
   multiplicative factor in the dose. This is a necessary, but not a
   sufficient, condition for a similar mode of action for the
   herbicides.

   .. rubric:: Source
      :name: source

   Streibig, J. C. (1987). Joint action of root-absorbed mixtures of
   auxin herbicides in Sinapis alba L. and barley (Hordeum vulgare L.)
   *Weed Research*, **27**, 337–347.

   .. rubric:: References
      :name: references

   Rudemo, M., Ruppert, D., and Streibig, J. C. (1989). Random-Effect
   Models in Nonlinear Regression with Applications to Bioassay.
   *Biometrics*, **45**, 349–362.

   .. rubric:: Examples
      :name: examples

   ::


      ## Fitting model with varying lower limits
      auxins.m1 <- boxcox(drm(y ~ dose, h, 
      pmodels = data.frame(h, h, 1, h), fct = LL.4(), data = auxins), method = "anova")

      ## Fitting model with common lower limit
      auxins.m2 <- boxcox(drm(y ~ dose, h, 
      pmodels = data.frame(h, 1, 1, h), fct = LL.4(), data = auxins), method = "anova")

      ## Comparing the two models
      anova(auxins.m2, auxins.m1)

