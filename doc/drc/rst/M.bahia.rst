.. container::

   ======= ===============
   M.bahia R Documentation
   ======= ===============

   .. rubric:: Effect of an effluent on the growth of mysid shrimp
      :name: effect-of-an-effluent-on-the-growth-of-mysid-shrimp

   .. rubric:: Description
      :name: description

   Juvenile mysid shrimp (*Mysidopsis bahia*) were exposed to up to 32%
   effluent in a 7-day survival and growth test. The average weight per
   treatment replicate of surviving organisms was measured.

   .. rubric:: Usage
      :name: usage

   ::

      data(M.bahia)

   .. rubric:: Format
      :name: format

   A data frame with 40 observations on the following 2 variables.

   ``conc``
      a numeric vector of effluent concentrations (%)

   ``dryweight``
      a numeric vector of average dry weights (mg)

   .. rubric:: Details
      :name: details

   The data are analysed in Bruce and Versteeg (1992) using a log-normal
   dose-response model (using the logarithm with base 10).

   At 32% there was complete mortality, and this justifies using a model
   where a lower asymptote of 0 is assumed.

   .. rubric:: Source
      :name: source

   Bruce, R. D. and Versteeg, D. J. (1992) A statistical procedure for
   modeling continuous toxicity data, *Environ. Toxicol. Chem.*, **11**,
   1485–1494.

   .. rubric:: Examples
      :name: examples

   ::

      M.bahia.m1 <- drm(dryweight~conc, data=M.bahia, fct=LN.3())

      ## Variation increasing
      plot(fitted(M.bahia.m1), residuals(M.bahia.m1))

      ## Using transform-both-sides approach
      M.bahia.m2 <- boxcox(M.bahia.m1, method = "anova")
      summary(M.bahia.m2)  # logarithm transformation

      ## Variation roughly constant, but still not a great fit
      plot(fitted(M.bahia.m2), residuals(M.bahia.m2))

      ## Visual comparison of fits
      plot(M.bahia.m1, type="all", broken=TRUE)
      plot(M.bahia.m2, add=TRUE, type="none", broken=TRUE, lty=2)

      ED(M.bahia.m2, c(10,20,50), ci="fls")

      ## A better fit
      M.bahia.m3 <- boxcox(update(M.bahia.m1, fct = LN.4()), method = "anova")
      #plot(fitted(M.bahia.m3), residuals(M.bahia.m3))
      plot(M.bahia.m3, add=TRUE, type="none", broken=TRUE, lty=3, col=2)
      ED(M.bahia.m3, c(10,20,50), ci="fls")
