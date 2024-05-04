.. container::

   .. container::

      =============== ===============
      S.capricornutum R Documentation
      =============== ===============

      .. rubric:: Effect of cadmium on growth of green alga
         :name: effect-of-cadmium-on-growth-of-green-alga

      .. rubric:: Description
         :name: description

      Green alga (*Selenastrum capricornutum*) was exposed to cadmium
      chloride concentrations ranging from 5 to 80 micro g/L in
      geometric progression in 4-day population growth test.

      .. rubric:: Usage
         :name: usage

      ::

         data(S.capricornutum)

      .. rubric:: Format
         :name: format

      A data frame with 18 observations on the following 2 variables.

      ``conc``
         a numeric vector of cadmium chloride concentrations (micro g/L)

      ``count``
         a numeric vector of algal counts (10000 x cells /ml)

      .. rubric:: Details
         :name: details

      The data are analysed in Bruce and Versteeg (1992) using a
      log-normal dose-response model (using the logarithm with base 10).

      .. rubric:: Source
         :name: source

      Bruce, R. D. and Versteeg, D. J. (1992) A statistical procedure
      for modeling continuous toxicity data, *Environ. Toxicol. Chem.*,
      **11**, 1485–1494.

      .. rubric:: Examples
         :name: examples

      ::

         ## Fitting 3-parameter log-normal model
         s.cap.m1 <- drm(count ~ conc, data = S.capricornutum, fct = LN.3())

         ## Residual plot
         plot(fitted(s.cap.m1), residuals(s.cap.m1))

         ## Fitting model with transform-both-sides approach
         s.cap.m2 <- boxcox(s.cap.m1, method = "anova")
         summary(s.cap.m2)

         ## Residual plot after transformation (looks better)
         plot(fitted(s.cap.m2), residuals(s.cap.m2))

         ## Calculating ED values on log scale
         ED(s.cap.m2, c(10, 20, 50), interval="delta")

         ## Fitting model with ED50 as parameter
         ## (for comparison)
         s.cap.m3 <- drm(count ~ conc, data = S.capricornutum, fct = LN.3(loge=TRUE))
         s.cap.m4 <- boxcox(s.cap.m3, method = "anova")
         summary(s.cap.m4)
         ED(s.cap.m4, c(10, 20, 50), interval = "fls")
