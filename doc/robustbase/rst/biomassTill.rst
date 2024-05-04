.. container::

   .. container::

      =========== ===============
      biomassTill R Documentation
      =========== ===============

      .. rubric:: Biomass Tillage Data
         :name: biomass-tillage-data

      .. rubric:: Description
         :name: description

      An agricultural experiment in which different tillage methods were
      implemented. The effects of tillage on plant (maize) biomass were
      subsequently determined by modeling biomass accumulation for each
      tillage treatment using a 3 parameter Weibull function.

      A datset where the total biomass is modeled conditional on a three
      value factor, and hence *vector* parameters are used.

      .. rubric:: Usage
         :name: usage

      ::

         data("biomassTill", package="robustbase")

      .. rubric:: Format
         :name: format

      A data frame with 58 observations on the following 3 variables.

      ``Tillage``
         Tillage treatments, a ``factor`` with levels

         ``CA-``:
            a no-tillage system with plant residues removed

         ``CA+``:
            a no-tillage system with plant residues retained

         ``CT``:
            a conventionally tilled system with residues incorporated

      ``DVS``
         the development stage of the maize crop. A DVS of ``1``
         represents maize anthesis (flowering), and a DVS of ``2``
         represents physiological maturity. For the data, numeric vector
         with 5 different values between 0.5 and 2.

      ``Biomass``
         accumulated biomass of maize plants from each tillage
         treatment.

      ``Biom.2``
         the same as ``Biomass``, but with three values replaced by
         “gross errors”.

      .. rubric:: Source
         :name: source

      From Strahinja Stepanovic and John Laborde, Department of Agronomy
      & Horticulture, University of Nebraska-Lincoln, USA

      .. rubric:: Examples
         :name: examples

      ::

         data(biomassTill)
         str(biomassTill)
         require(lattice)
         ## With long tailed errors
         xyplot(Biomass ~ DVS | Tillage, data = biomassTill, type=c("p","smooth"))
         ## With additional 2 outliers:
         xyplot(Biom.2 ~ DVS | Tillage, data = biomassTill, type=c("p","smooth"))

         ### Fit nonlinear Regression models: -----------------------------------

         ## simple starting values, needed:
         m00st <- list(Wm = rep(300,  3),
                        a = rep( 1.5, 3),
                        b = rep( 2.2, 3))

         robm <- nlrob(Biomass ~ Wm[Tillage] * (-expm1(-(DVS/a[Tillage])^b[Tillage])),
                       data = biomassTill, start = m00st, maxit = 200)
         ##                                               -----------
         summary(robm) ## ... 103 IRWLS iterations
         plot(sort(robm$rweights), log = "y",
              main = "ordered robustness weights (log scale)")
         mtext(getCall(robm))

         ## the classical (only works for the mild outliers):
         cl.m <- nls(Biomass ~ Wm[Tillage] * (-expm1(-(DVS/a[Tillage])^b[Tillage])),
                     data = biomassTill, start = m00st)

         ## now for the extra-outlier data: -- fails with singular gradient !!
         try(
         rob2 <- nlrob(Biom.2 ~ Wm[Tillage] * (-expm1(-(DVS/a[Tillage])^b[Tillage])),
                       data = biomassTill, start = m00st)
         )
         ## use better starting values:
         m1st <- setNames(as.list(as.data.frame(matrix(
                         coef(robm), 3))),
                         c("Wm", "a","b"))
         try(# just breaks a bit later!
         rob2 <- nlrob(Biom.2 ~ Wm[Tillage] * (-expm1(-(DVS/a[Tillage])^b[Tillage])),
                       data = biomassTill, start = m1st, maxit= 200, trace=TRUE)
         )

         ## Comparison  {more to come} % once we have  "MM" working...
         rbind(start = unlist(m00st),
               class = coef(cl.m),
               rob   = coef(robm))
