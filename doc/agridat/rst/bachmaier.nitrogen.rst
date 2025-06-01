.. container::

   .. container::

      ================== ===============
      bachmaier.nitrogen R Documentation
      ================== ===============

      .. rubric:: Trial of wheat with nitrogen fertilizer in two
         fertility zones
         :name: trial-of-wheat-with-nitrogen-fertilizer-in-two-fertility-zones

      .. rubric:: Description
         :name: description

      Trial of wheat with nitrogen fertilizer in two fertility zones

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("bachmaier.nitrogen")

      .. rubric:: Format
         :name: format

      A data frame with 88 observations on the following 3 variables.

      ``nitro``
         nitrogen fertilizer, kg/ha

      ``yield``
         wheat yield, Mg/ha

      ``zone``
         fertility zone

      .. rubric:: Details
         :name: details

      Data from a wheat fertilizer experiment in Germany in two yield
      zones. In each zone, the design was an RCB with 4 blocks and 11
      nitrogen levels. The yield of each plot was measured.

      Electronic data originally downloaded from
      http://www.tec.wzw.tum.de/bachmaier/vino.zip (no longer
      available).

      .. rubric:: Source
         :name: source

      Bachmaier, Martin. 2009. A Confidence Set for That X-Coordinate
      Where a Quadratic Regression Model Has a Given Gradient.
      Statistical Papers 50: 649–60.
      https://doi.org/10.1007/s00362-007-0104-1.

      .. rubric:: References
         :name: references

      Bachmaier, Martin. Test and confidence set for the difference of
      the x-coordinates of the vertices of two quadratic regression
      models. Stat Papers (2010) 51:285–296,
      https://doi.org/10.1007/s00362-008-0159-7

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(bachmaier.nitrogen)
         dat <- bachmaier.nitrogen

         # Fit a quadratic model for the low-fertility zone
         dlow <- subset(dat, zone=="low")
         m1 <- lm(yield ~ nitro + I(nitro^2), dlow)

         # Slope of tangent line for economic optimum
         m <- .005454 # = (N 0.60 euro/kg) / (wheat 110 euro/Mg)
         # x-value of tangent point
         b1 <- coef(m1)[2]
         b2 <- coef(m1)[3]
         opt.bach <- (m-b1)/(2*b2)
         round(opt.bach, 0)

         # conf int for x value of tangent point
         round(vcovs <- vcov(m1), 7)
         b1b1 <- vcovs[2,2] # estimated var of b1
         b1b2 <- vcovs[2,3] # estimated cov of b1,b2
         b2b2 <- vcovs[3,3]
         tval <- qt(1 - 0.05/2, nrow(dlow)-3)
         A <- b2^2 - b2b2 * tval^2
         B <- (b1-m)*b2 - b1b2 * tval^2
         C <- ((b1-m)^2 - b1b1 * tval^2)/4
         D <- B^2 - 4*A*C
         x.lo <- -2*C / (B-sqrt(B^2-4*A*C))
         x.hi <- (-B + sqrt(B^2-4*A*C))/(2*A)
         ci.bach <- c(x.lo, x.hi)
         round(ci.bach,0) # 95% CI 173,260 Matches Bachmaier

         # Plot raw data, fitted quadratic, optimum, conf int
         plot(yield~nitro, dlow)
         p1 <- data.frame(nitro=seq(0,260, by=1))
         p1$pred <- predict(m1, new=p1)
         lines(pred~nitro, p1)
         abline(v=opt.bach, col="blue")
         abline(v=ci.bach, col="skyblue")
         title("Economic optimum with 95 pct confidence interval")
