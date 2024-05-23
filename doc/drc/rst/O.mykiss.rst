.. container::

   .. container::

      ======== ===============
      O.mykiss R Documentation
      ======== ===============

      .. rubric:: Test data from a 21 day fish test
         :name: test-data-from-a-21-day-fish-test

      .. rubric:: Description
         :name: description

      Test data from a 21 day fish test following the guidelines OECD
      GL204, using the test organism Rainbow trout *Oncorhynchus
      mykiss*.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(O.mykiss)

      .. rubric:: Format
         :name: format

      A data frame with 70 observations on the following 2 variables.

      ``conc``
         a numeric vector of concentrations (mg/l)

      ``weight``
         a numeric vector of wet weights (g)

      .. rubric:: Details
         :name: details

      Weights are measured after 28 days.

      .. rubric:: Source
         :name: source

      Organisation for Economic Co-operation and Development (OECD)
      (2006) *CURRENT APPROACHES IN THE STATISTICAL ANALYSIS OF
      ECOTOXICITY DATA: A GUIDANCE TO APPLICATION - ANNEXES*, Paris (p.
      65).

      .. rubric:: References
         :name: references

      Organisation for Economic Co-operation and Development (OECD)
      (2006) *CURRENT APPROACHES IN THE STATISTICAL ANALYSIS OF
      ECOTOXICITY DATA: A GUIDANCE TO APPLICATION - ANNEXES*, Paris (pp.
      80–85).

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(O.mykiss)

         ## Fitting exponential model
         O.mykiss.m1 <- drm(weight ~ conc, data = O.mykiss, fct = EXD.2(), na.action = na.omit)
         modelFit(O.mykiss.m1)
         summary(O.mykiss.m1)

         ## Fitting same model with transform-both-sides approach
         O.mykiss.m2 <- boxcox(O.mykiss.m1 , method = "anova")
         summary(O.mykiss.m2)
         # no need for a transformation

         ## Plotting the fit
         plot(O.mykiss.m1, type = "all", xlim = c(0, 500), ylim = c(0,4),
         xlab = "Concentration (mg/l)", ylab = "Weight (g)", broken = TRUE)
