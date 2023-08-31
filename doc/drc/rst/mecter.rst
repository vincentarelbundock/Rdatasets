.. container::

   ====== ===============
   mecter R Documentation
   ====== ===============

   .. rubric:: Mechlorprop and terbythylazine tested on Lemna minor
      :name: mecter

   .. rubric:: Description
      :name: description

   Data consist of 5 mixture, 6 dilutions, three replicates, and 12
   common controls; in total 102 onservations.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(mecter)

   .. rubric:: Format
      :name: format

   A data frame with 102 observations on the following 3 variables.

   ``dose``
      a numeric vector of dose values

   ``pct``
      a numeric vector denoting the grouping according to the mixtures
      percentages

   ``rgr``
      a numeric vector of response values (relative growth rates)

   .. rubric:: Details
      :name: details

   The dataset is analysed in Soerensen et al (2007). The asymmetric
   Voelund model is appropriate, whereas the symmetric Hewlett model is
   not.

   .. rubric:: Source
      :name: source

   The dataset is kindly provided by Nina Cedergreen, Department of
   Agricultural Sciences, Royal Veterinary and Agricultural University,
   Denmark.

   .. rubric:: References
      :name: references

   Soerensen, H. and Cedergreen, N. and Skovgaard, I. M. and Streibig,
   J. C. (2007) An isobole-based statistical model and test for
   synergism/antagonism in binary mixture toxicity experiments,
   *Environmental and Ecological Statistics*, **14**, 383–397.

   .. rubric:: Examples
      :name: examples

   .. code:: R

      ## Fitting the model with freely varying ED50 values
      mecter.free <- drm(rgr ~ dose, pct, data = mecter, 
      fct = LL.4(), pmodels = list(~1, ~1, ~1, ~factor(pct) - 1)) 

      ## Lack-of-fit test
      modelFit(mecter.free)  # not really acceptable
      summary(mecter.free)

      ## Plotting isobole structure
      isobole(mecter.free, exchange = 0.02)

      ## Fitting the concentration addition model
      mecter.ca <- mixture(mecter.free, model = "CA")

      ## Comparing to model with freely varying e parameter
      anova(mecter.ca, mecter.free)  # rejected

      ## Plotting isobole based on concentration addition
      isobole(mecter.free, mecter.ca, exchange = 0.02)  # poor fit

      ## Fitting the Hewlett model
      mecter.hew <- mixture(mecter.free, model = "Hewlett")

      ## Comparing to model with freely varying e parameter
      anova(mecter.hew, mecter.free)  # rejected

      ## Plotting isobole based on the Hewlett model
      isobole(mecter.free, mecter.hew, exchange = 0.02)  # poor fit

      ## Fitting the Voelund model
      mecter.voe<-mixture(mecter.free, model = "Voelund")

      ## Comparing to model with freely varying e parameter
      anova(mecter.voe, mecter.free)  # accepted

      ## Plotting isobole based on the Voelund model
      isobole(mecter.free, mecter.voe, exchange = 0.02)  # good fit
