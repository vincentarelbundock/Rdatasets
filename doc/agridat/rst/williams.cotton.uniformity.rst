.. container::

   .. container::

      ========================== ===============
      williams.cotton.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of cotton
         :name: uniformity-trial-of-cotton

      .. rubric:: Description
         :name: description

      Uniformity trial of cotton at Narrabri, New South Wales, 1984.

      .. rubric:: Format
         :name: format

      A data frame with 288 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         lint yield, kg/ha divided by 10

      .. rubric:: Details
         :name: details

      Cotton uniformity trial grown at Narrabri, New South Wales,
      1984-1985. Plots were 12m long, 1m apart, 12 rows by 24 columns,
      with an irrigation furrow between columns.

      Field width: 24 plots \* 1 m = 24 m

      Field length: 12 plots \* 12 m = 144 m

      .. rubric:: Source
         :name: source

      Williams, ER and Luckett, DJ. 1988. The use of uniformity data in
      the design and analysis of cotton and barley variety trials.
      Australian Journal of Agricultural Research, 39, 339-350.
      https://doi.org/10.1071/AR9880339

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(williams.cotton.uniformity)
         dat <- williams.cotton.uniformity

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 aspect=144/24, # true aspect
                 main="williams.cotton.uniformity")


         # Smoothed contour/persp plot like Williams 1988 Fig 1a, 2a
         dat$fit <- fitted(loess(yield~col*row, dat, span=.5))
         libs("lattice")
         contourplot(fit~col*row, data=dat,
                     aspect=144/24,
                     region=TRUE, cuts=6, col.regions=RedGrayBlue,
                     main="williams.cotton.uniformity")
         # wireframe(fit~col*row, data=dat, zlim=c(100, 250),
         #           main="williams.cotton.uniformity")

         # Williams table 1
         anova(aov(yield ~ factor(row) + factor(col), dat))

         ## End(Not run)
