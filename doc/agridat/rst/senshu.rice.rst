.. container::

   .. container::

      =========== ===============
      senshu.rice R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of rice, with solar radiation
         and temperature
         :name: multi-environment-trial-of-rice-with-solar-radiation-and-temperature

      .. rubric:: Description
         :name: description

      Response of rice to solar radiation and temperature

      .. rubric:: Format
         :name: format

      A data frame with 40 observations on the following 7 variables.

      ``country``
         country

      ``loc``
         location

      ``year``
         year of planting, last two digits

      ``month``
         month of planting

      ``rad``
         solar radiation

      ``mint``
         minimum temperature

      ``yield``
         yield t/ha

      .. rubric:: Details
         :name: details

      Minimum temperature is the average across 30 days post flowering.

      Opinion: Fitting a quadratic model to this data makes no sense.

      .. rubric:: Source
         :name: source

      Seshu, D. V. and Cady, F. B. 1984. Response of rice to solar
      radiation and temperature estimated from international yield
      trials. *Crop Science*, 24, 649-654.
      https://doi.org/10.2135/cropsci1984.0011183X002400040006x

      .. rubric:: References
         :name: references

      Walter W. Piegorsch, A. John Bailer. (2005) *Analyzing
      Environmental Data*, Wiley.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
         library(agridat)

         data(senshu.rice)
         dat <- senshu.rice

         # Model 1 of Senshu & Cady
         m1 <- lm(yield ~ 1 + rad + mint + I(mint^2), dat)
         coef(m1)

         # Use Fieller to calculate conf int around optimum minimum temp
         # See: Piegorsch & Bailer, p. 31.
         # Calculation derived from vegan:::fieller.MOStest
         m2 <- lm(yield ~ 1 + mint + I(mint^2), dat)
         b1 <- coef(m2)[2]
         b2 <- coef(m2)[3]
         vc <- vcov(m2)
         sig11 <- vc[2,2]
         sig12 <- vc[2,3]
         sig22 <- vc[3,3]
         u <- -b1/2/b2
         tval <- qt(1-.05/2, nrow(dat)-3)
         gam <- tval^2 * sig22 / b2^2
         x <- u + gam * sig12 / (2 * sig22)
         f <- tval / (-2*b2)
         sq <- sqrt(sig11 + 4*u*sig12 + 4*u^2*sig22 - gam * (sig11 - sig12^2 / sig22) )
         ci <- (x + c(1,-1)*f*sq) / (1-gam)
         plot(yield ~ mint, dat, xlim=c(17, 32),
         main="senshu.rice: Quadratic fit and Fieller confidence interval",
              xlab="Minimum temperature", ylab="Yield")
         lines(17:32, predict(m2, new=data.frame(mint=17:32)))
         abline(v=ci, col="blue")

         ## End(Not run)
