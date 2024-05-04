.. container::

   .. container::

      ====== ===============
      acidiq R Documentation
      ====== ===============

      .. rubric:: Acifluorfen and diquat tested on Lemna minor.
         :name: acifluorfen-and-diquat-tested-on-lemna-minor.

      .. rubric:: Description
         :name: description

      Data from an experiment where the chemicals acifluorfen and diquat
      tested on Lemna minor. The dataset has 7 mixtures used in 8
      dilutions with three replicates and 12 common controls, in total
      180 observations.

      .. rubric:: Usage
         :name: usage

      ::

         data(acidiq)

      .. rubric:: Format
         :name: format

      A data frame with 180 observations on the following 3 variables.

      ``dose``
         a numeric vector of dose values

      ``pct``
         a numeric vector denoting the grouping according to the
         mixtures percentages

      ``rgr``
         a numeric vector of response values (relative growth rates)

      .. rubric:: Details
         :name: details

      The dataset is analysed in Soerensen et al (2007). Hewlett's
      symmetric model seems appropriate for this dataset.

      .. rubric:: Source
         :name: source

      The dataset is kindly provided by Nina Cedergreen, Department of
      Agricultural Sciences, Royal Veterinary and Agricultural
      University, Denmark.

      .. rubric:: References
         :name: references

      Soerensen, H. and Cedergreen, N. and Skovgaard, I. M. and
      Streibig, J. C. (2007) An isobole-based statistical model and test
      for synergism/antagonism in binary mixture toxicity experiments,
      *Environmental and Ecological Statistics*, **14**, 383–397.

      .. rubric:: Examples
         :name: examples

      ::

         ## Fitting the model with freely varying ED50 values
         ## Ooops: Box-Cox transformation is needed
         acidiq.free <- drm(rgr ~ dose, pct, data = acidiq, fct = LL.4(),
         pmodels = list(~factor(pct), ~1, ~1, ~factor(pct) - 1))

         ## Lack-of-fit test
         modelFit(acidiq.free)
         summary(acidiq.free)

         ## Plotting isobole structure
         isobole(acidiq.free, xlim = c(0, 400), ylim = c(0, 450))

         ## Fitting the concentration addition model
         acidiq.ca <- mixture(acidiq.free, model = "CA")

         ## Comparing to model with freely varying e parameter
         anova(acidiq.ca, acidiq.free)  # rejected

         ## Plotting isobole based on concentration addition -- poor fit
         isobole(acidiq.free, acidiq.ca, xlim = c(0, 420), ylim = c(0, 450))  # poor fit

         ## Fitting the Hewlett model
         acidiq.hew <- mixture(acidiq.free, model = "Hewlett")

         ## Comparing to model with freely varying e parameter
         anova(acidiq.free, acidiq.hew)  # accepted
         summary(acidiq.hew)

         ## Plotting isobole based on the Hewlett model
         isobole(acidiq.free, acidiq.hew, xlim = c(0, 400), ylim = c(0, 450))  # good fit
