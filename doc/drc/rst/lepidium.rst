.. container::

   ======== ===============
   lepidium R Documentation
   ======== ===============

   .. rubric:: Dose-response profile of degradation of agrochemical
      using lepidium
      :name: dose-response-profile-of-degradation-of-agrochemical-using-lepidium

   .. rubric:: Description
      :name: description

   Estimation of the degradation profile of an agrochemical based on
   soil samples at depth 0-10cm from a calibration experiment.

   .. rubric:: Usage
      :name: usage

   ::

      data(lepidium)

   .. rubric:: Format
      :name: format

   A data frame with 42 observations on the following 2 variables.

   ``conc``
      a numeric vector of concentrations (g/ha)

   ``weight``
      a numeric vector of plant weight (g) after 3 weeks' growth

   .. rubric:: Details
      :name: details

   It is an experiment with seven concentrations and six replicates per
   concentration. *Lepidium* is rather robust as it only responds to
   high concentrations.

   .. rubric:: Source
      :name: source

   Racine-Poon, A. (1988) A Bayesian Approach to Nonlinear Calibration
   Problems, *J. Am. Statist. Ass.*, **83**, 650–656.

   .. rubric:: Examples
      :name: examples

   ::

      lepidium.m1 <- drm(weight~conc, data=lepidium, fct = LL.4())

      modelFit(lepidium.m1)

      plot(lepidium.m1, type = "all", log = "")
