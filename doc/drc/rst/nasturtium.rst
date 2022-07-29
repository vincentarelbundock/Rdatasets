.. container::

   ========== ===============
   nasturtium R Documentation
   ========== ===============

   .. rubric:: Dose-response profile of degradation of agrochemical
      using nasturtium
      :name: dose-response-profile-of-degradation-of-agrochemical-using-nasturtium

   .. rubric:: Description
      :name: description

   Estimation of the degradation profile of an agrochemical based on
   soil samples at depth 0-10cm from a calibration experiment.

   .. rubric:: Usage
      :name: usage

   ::

      data(nasturtium)

   .. rubric:: Format
      :name: format

   A data frame with 42 observations on the following 2 variables.

   ``conc``
      a numeric vector of concentrations (g/ha)

   ``weight``
      a numeric vector of plant weight (mg) after 3 weeks' growth

   .. rubric:: Details
      :name: details

   It is an experiment with seven concentrations and six replicates per
   concentration. *Nasturtium* is sensitive and its weight reduces
   noticeable at low concentrations.

   Racine-Poon (1988) suggests using a three-parameter log-logistic
   model.

   .. rubric:: Source
      :name: source

   Racine-Poon, A. (1988) A Bayesian Approach to Nonlinear Calibration
   Problems, *J. Am. Statist. Ass.*, **83**, 650–656.

   .. rubric:: Examples
      :name: examples

   ::

      nasturtium.m1 <- drm(weight~conc, data=nasturtium, fct = LL.3())

      modelFit(nasturtium.m1)

      plot(nasturtium.m1, type = "all", log = "", xlab = "Concentration (g/ha)", ylab = "Weight (mg)")
