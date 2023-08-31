.. container::

   ====== ===============
   glymet R Documentation
   ====== ===============

   .. rubric:: Glyphosate and metsulfuron-methyl tested on algae.
      :name: glymet

   .. rubric:: Description
      :name: description

   The dataset has 7 mixtures, 8 dilutions, two replicates and 5 common
   control controls. Four observations are missing, giving a total of
   113 observations.

   .. rubric:: Usage
      :name: usage

   .. code:: R

      data(glymet)

   .. rubric:: Format
      :name: format

   A data frame with 113 observations on the following 3 variables.

   ``dose``
      a numeric vector of dose values

   ``pct``
      a numeric vector denoting the grouping according to the mixtures
      percentages

   ``rgr``
      a numeric vector of response values (relative growth rates)

   .. rubric:: Details
      :name: details

   The dataset is analysed in Soerensen et al (2007). The concentration
   addition model can be entertained for this dataset.

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
      glymet.free <- drm(rgr~dose, pct, data = glymet, 
      fct = LL.3(), pmodels = list(~factor(pct) , ~1, ~factor(pct))) 

      ## Lack-of-fit test
      modelFit(glymet.free)  # acceptable
      summary(glymet.free)

      ## Plotting isobole structure
      isobole(glymet.free, exchange=0.01)

      ## Fitting the concentration addition model
      glymet.ca <- mixture(glymet.free, model = "CA")

      ## Comparing to model with freely varying e parameter
      anova(glymet.ca, glymet.free)  # borderline accepted

      ## Plotting isobole based on concentration addition
      isobole(glymet.free, glymet.ca, exchange = 0.01)  # acceptable fit

      ## Fitting the Hewlett model
      glymet.hew <- mixture(glymet.free, model = "Hewlett")

      ### Comparing to model with freely varying e parameter
      anova(glymet.ca, glymet.hew)  
      # borderline accepted
      # the Hewlett model offers no improvement over concentration addition

      ## Plotting isobole based on the Hewlett model
      isobole(glymet.free, glymet.hew, exchange = 0.01)  
      # no improvement over concentration addition
