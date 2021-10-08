.. container::

   ========= ===============
   G.aparine R Documentation
   ========= ===============

   .. rubric:: Herbicide applied to Galium aparine
      :name: herbicide-applied-to-galium-aparine

   .. rubric:: Description
      :name: description

   Small plants of *Galium aparine*, growing in pots in a green house,
   were sprayed with the technical grade phenmidipham herbicide either
   alone or in mixture with an ester of oleic acid. The plants were
   allowed to grow in the green house for 14 days after herbicide
   treatment. Then the dry matter was measured per pot.

   .. rubric:: Usage
      :name: usage

   ::

      data(G.aparine)

   .. rubric:: Format
      :name: format

   A data frame with 240 observations on the following 3 variables.

   ``dose``
      a numeric vector of dose value (g/ha)

   ``drymatter``
      a numeric vector of dry matter weights (mg/pot)

   ``treatment``
      a numeric vector giving the grouping: 0: control, 1,2: herbicide
      formulations

   .. rubric:: Source
      :name: source

   Cabanne, F., Gaudry, J. C. and Streibig, J. C. (1999) Influence of
   alkyl oleates on efficacy of phenmedipham applied as an acetone:water
   solution on Galium aparine, *Weed Research*, **39**, 57–67.

   .. rubric:: Examples
      :name: examples

   ::


      ## Fitting a model with a common control (so a single upper limit: "1")
      G.aparine.m1 <- drm(drymatter ~ dose, treatment, data = G.aparine, 
      pmodels = data.frame(treatment, treatment, 1, treatment), fct = LL.4())

      ## Visual inspection of fit
      plot(G.aparine.m1, broken = TRUE)

      ## Lack of fit test
      modelFit(G.aparine.m1)

      ## Summary output
      summary(G.aparine.m1)

      ## Predicted values with se and confidence intervals
      #predict(G.aparine.m1, interval = "confidence")
      # long output

      ## Calculating the relative potency
      EDcomp(G.aparine.m1, c(50,50))

      ## Showing the relative potency as a
      ## function of the response level
      relpot(G.aparine.m1)
      relpot(G.aparine.m1, interval = "delta")
      # appears constant!

      ## Response level in percent
      relpot(G.aparine.m1, scale = "percent")

      ## Fitting a reduced model (with a common slope parameter)
      G.aparine.m2 <- drm(drymatter ~ dose, treatment, data = G.aparine, 
      pmodels = data.frame(1, treatment, 1, treatment), fct = LL.4())

      anova(G.aparine.m2, G.aparine.m1)

      ## Showing the relative potency 
      relpot(G.aparine.m2)

      ## Fitting the same model in a different parameterisation
      G.aparine.m3 <- drm(drymatter ~ dose, treatment, data = G.aparine, 
      pmodels = data.frame(treatment, treatment, 1, treatment), fct = LL2.4())

      EDcomp(G.aparine.m3, c(50, 50), logBase = exp(1))
