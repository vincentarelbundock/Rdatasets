.. container::

   ======== ===============
   ryegrass R Documentation
   ======== ===============

   .. rubric:: Effect of ferulic acid on growth of ryegrass
      :name: effect-of-ferulic-acid-on-growth-of-ryegrass

   .. rubric:: Description
      :name: description

   A single dose-response curve.

   .. rubric:: Usage
      :name: usage

   ::

      data(ryegrass)

   .. rubric:: Format
      :name: format

   A data frame with 24 observations on the following 2 variables.

   rootl
      a numeric vector of root lengths

   conc
      a numeric vector of concentrations of ferulic acid

   .. rubric:: Details
      :name: details

   The data are part of a study to investigate the joint action of
   phenolic acids on root growth inhibition of perennial ryegrass
   (*Lolium perenne L*).

   ``conc`` is the concentration of ferulic acid is in mM, and ``rootl``
   is the root length of perennial ryegrass measured in cm.

   .. rubric:: Source
      :name: source

   Inderjit and J. C. Streibig, and M. Olofsdotter (2002) Joint action
   of phenolic acid mixtures and its significance in allelopathy
   research, *Physiologia Plantarum*, **114**, 422–428, 2002.

   .. rubric:: Examples
      :name: examples

   ::


      ## Displaying the data set
      ryegrass

      ## Fitting a four-parameter Weibull model (type 2)
      ryegrass.m1 <- drm(rootl ~ conc, data = ryegrass, fct = W2.4())

      ## Displaying a summary of the model fit
      summary(ryegrass.m1)

      ## Plotting the fitted curve together with the original data
      plot(ryegrass.m1)

      ## Fitting a four-parameter Weibull model (type 1)
      ryegrass.m2 <- drm(rootl ~ conc, data = ryegrass, fct = W1.4())
      plot(ryegrass.m2)

      ## Fitting a four-parameter log-logistic model
      ## with user-defined parameter names
      ryegrass.m3 <- drm(rootl ~ conc, data = ryegrass, 
      fct = LL.4(names = c("Slope", "Lower Limit", "Upper Limit", "ED50")))
      summary(ryegrass.m3)

      ## Comparing log-logistic and Weibull models
      ## (Figure 2 in Ritz (2009))
      ryegrass.m0 <- drm(rootl ~ conc, data = ryegrass, fct = LL.4())
      ryegrass.m1 <- drm(rootl ~ conc, data = ryegrass, fct = W1.4())
      ryegrass.m2 <- drm(rootl ~ conc, data = ryegrass, fct = W2.4())

      plot(ryegrass.m0, broken=TRUE, xlab="Dose (mM)", ylab="Root length (cm)", lwd=2, 
      cex=1.2, cex.axis=1.2, cex.lab=1.2)
      plot(ryegrass.m1, add=TRUE, broken=TRUE, lty=2, lwd=2)
      plot(ryegrass.m2, add=TRUE, broken=TRUE, lty=3, lwd=2)

      arrows(3, 7.5, 1.4, 7.5, 0.15, lwd=2)
      text(3,7.5, "Weibull-2", pos=4, cex=1.2)

      arrows(2.5, 0.9, 5.7, 0.9, 0.15, lwd=2)
      text(3,0.9, "Weibull-1", pos=2, cex=1.2)


