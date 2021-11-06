.. container::

   ====== ===============
   airmay R Documentation
   ====== ===============

   .. rubric:: Air Quality Data
      :name: air-quality-data

   .. rubric:: Description
      :name: description

   Air Quality Data Set for May 1973, from Chambers et al. (1983). The
   whole data set consists of daily readings of air quality values from
   May 1, 1973 to September 30, 1973, but here are included only the
   values for May. This data set is an example of the special treatment
   of the missing values.

   .. rubric:: Usage
      :name: usage

   ::

      data(airmay, package="robustbase")

   .. rubric:: Format
      :name: format

   A data frame with 31 observations on the following 4 variables.

   ``X1``
      Solar Radiation in Longleys in the frequency band 4000-7700 from
      0800 to 1200 hours at Central Park

   ``X2``
      Average windspeed (in miles per hour) between 7000 and 1000 hours
      at La Guardia Airport

   ``X3``
      Maximum daily temperature (in degrees Fahrenheit) at La Guardia
      Airport

   ``Y``
      Mean ozone concentration (in parts per billion) from 1300 to 1500
      hours at Roosevelt Island

   .. rubric:: Source
      :name: source

   P. J. Rousseeuw and A. M. Leroy (1987) *Robust Regression and Outlier
   Detection*; Wiley, p.86, table 6.

   .. rubric:: Examples
      :name: examples

   ::

      data(airmay)
      summary(lm.airmay <- lm(Y ~ ., data=airmay))


      airmay.x <- data.matrix(airmay[,1:3])

