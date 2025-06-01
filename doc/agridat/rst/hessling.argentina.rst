.. container::

   .. container::

      ================== ===============
      hessling.argentina R Documentation
      ================== ===============

      .. rubric:: Relation between wheat yield and weather in Argentina
         :name: relation-between-wheat-yield-and-weather-in-argentina

      .. rubric:: Description
         :name: description

      Relation between wheat yield and weather in Argentina

      .. rubric:: Format
         :name: format

      A data frame with 30 observations on the following 15 variables.

      ``yield``
         average yield, kg/ha

      ``year``
         year

      ``p05``
         precipitation (mm) in May

      ``p06``
         precip in June

      ``p07``
         precip in July

      ``p08``
         precip in August

      ``p09``
         precip in Septempber

      ``p10``
         precip in October

      ``p11``
         precip in November

      ``p12``
         precip in December

      ``t06``
         june temperature deviation from normal, deg Celsius

      ``t07``
         july temp deviation

      ``t08``
         august temp deviation

      ``t09``
         september temp deviation

      ``t10``
         october temp deviation

      ``t11``
         november temp deviation

      .. rubric:: Details
         :name: details

      In Argentina wheat is typically sown May to August. Harvest begins
      in November or December.

      .. rubric:: Source
         :name: source

      N. A. Hessling, 1922. Relations between the weather and the yield
      of wheat in the Argentine republic, *Monthly Weather Review*, 50,
      302-308.
      https://doi.org/10.1175/1520-0493(1922)50<302:RBTWAT>2.0.CO;2

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(hessling.argentina)
         dat <- hessling.argentina

         # Fig 1 of Hessling.  Use avg Aug-Nov temp to predict yield
         dat <- transform(dat, avetmp=(t08+t09+t10+t11)/4) # Avg temp
         m0 <- lm(yield ~ avetmp, dat)
         plot(yield~year, dat, ylim=c(100,1500), type='l',
         main="hessling.argentina: observed (black) and predicted yield (blue)")
         lines(fitted(m0)~year, dat, col="blue")

         # A modern, PLS approach
         libs(pls)
         yld <- dat[,"yield",drop=FALSE]
         yld <- as.matrix(sweep(yld, 2, colMeans(yld)))
         cov <- dat[,c("p06","p07","p08","p09","p10","p11", "t08","t09","t10","t11")]
         cov <- as.matrix(scale(cov))
         m2 <- plsr(yld~cov)

         # biplot(m2, which="x", var.axes=TRUE, main="hessling.argentina")


         libs(corrgram)
         corrgram(dat, main="hessling.argentina - correlations of yield and covariates")


         ## End(Not run)
