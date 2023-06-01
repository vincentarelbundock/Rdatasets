.. container::

   ===== ===============
   algae R Documentation
   ===== ===============

   .. rubric:: Volume of algae as function of increasing concentrations
      of a herbicide
      :name: algae

   .. rubric:: Description
      :name: description

   Dataset from an experiment exploring the effect of increasing
   concentrations of a herbicide on the volume of the treated algae.

   .. rubric:: Usage
      :name: usage

   ::

      data(algae)

   .. rubric:: Format
      :name: format

   A data frame with 14 observations on the following 2 variables.

   ``conc``
      a numeric vector of concentrations.

   ``vol``
      a numeric vector of response values, that is relative change in
      volume.

   .. rubric:: Details
      :name: details

   This datasets requires a cubic root transformation in order to
   stabilise the variance.

   .. rubric:: Source
      :name: source

   Meister, R. and van den Brink, P. (2000) *The Analysis of Laboratory
   Toxicity Experiments*, Chapter 4 in *Statistics in Ecotoxicology*,
   Editor: T. Sparks, New York: John Wiley \\& Sons, (pp. 114–116).

   .. rubric:: Examples
      :name: examples

   ::

      algae.m1 <- drm(vol~conc, data=algae, fct=LL.3())
      summary(algae.m1)

      algae.m2 <- boxcox(algae.m1)
      summary(algae.m2)
