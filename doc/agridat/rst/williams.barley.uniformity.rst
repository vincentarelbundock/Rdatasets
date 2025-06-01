.. container::

   .. container::

      ========================== ===============
      williams.barley.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of barley
         :name: uniformity-trial-of-barley

      .. rubric:: Description
         :name: description

      Uniformity trial of barley at Narrabri, New South Wales, 1984.

      .. rubric:: Format
         :name: format

      A data frame with 720 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         grain yield kg/ha divided by 10

      .. rubric:: Details
         :name: details

      Grown at Roseworthy Agricultural College. Plots were 5 m long (4 m
      sown, 3.3 m harvested) by 0.75 m wide.

      A three-plot seeder was used, planting in a serpentine fashion.
      Williams noted that it appears that the middle plot of each pass
      has a lower yield, possibly due to soil compaction from the
      tractor.

      Field width: 48 plots \* .75 m = 36 m

      Field length: 15 plots \* 5 m = 75 m

      .. rubric:: Source
         :name: source

      Williams, ER and Luckett, DJ. 1988. The use of uniformity data in
      the design and analysis of cotton and barley variety trials.
      Australian Journal of Agricultural Research, 39, 339-350.
      https://doi.org/10.1071/AR9880339

      .. rubric:: References
         :name: references

      Maria Xose Rodriguez-Alvarez, Martin P. Boer, Fred A. van Eeuwijk,
      Paul H. C. Eilersd (2018). Correcting for spatial heterogeneity in
      plant breeding experiments with P-splines. Spatial Statistics, 23,
      52-71. https://doi.org/10.1016/j.spasta.2017.10.003

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(williams.barley.uniformity)
         dat <- williams.barley.uniformity

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 aspect= 75/36, # true aspect
                 main="williams.barley.uniformity")


         # Smoothed contour/persp plot like Williams Fig 1b, 2b
         libs(lattice)
         dat$fit <- fitted(loess(yield~col*row, dat, span=.1))
         contourplot(fit~col*row, data=dat,
                     aspect=75/36, region=TRUE, col.regions=RedGrayBlue,
                     main="williams.barley.uniformity")
         wireframe(fit~col*row, data=dat, zlim=c(100, 350),
                   main="williams.barley.uniformity")

         # Williams table 1
         anova(aov(yield ~ factor(row) + factor(col), dat))


         ## End(Not run)
