.. container::

   .. container::

      ================ ===============
      mead.cauliflower R Documentation
      ================ ===============

      .. rubric:: Leaves for cauliflower plants at different times
         :name: leaves-for-cauliflower-plants-at-different-times

      .. rubric:: Description
         :name: description

      Leaves for cauliflower plants at different times in two years.

      .. rubric:: Format
         :name: format

      A data frame with 14 observations on the following 4 variables.

      ``year``
         year factor

      ``degdays``
         degree days above 32F

      ``leaves``
         number of leaves

      .. rubric:: Details
         :name: details

      Numbers of leaves for 10 cauliflower plants in each of two years,
      and temperature degree-days above 32F, divided by 100.

      The year is 1956-57 or 1957-58.

      Over the data range shown, the number of leaves is increasing
      linearly. Extrapolating backwards shows that a linear model is
      inappropriate, and so a glm is used.

      .. rubric:: Source
         :name: source

      Roger Mead, Robert N Curnow, Anne M Hasted. 2002. Statistical
      Methods in Agriculture and Experimental Biology, 3rd ed. Chapman
      and Hall. Page 251.

      .. rubric:: References
         :name: references

      Mick O'Neill. Regression & Generalized Linear (Mixed) Models.
      Statistical Advisory & Training Service Pty Ltd.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(mead.cauliflower)
         dat <- mead.cauliflower

         dat <- transform(dat, year=factor(year))

         m1 <- glm(leaves ~ degdays + year, data=dat, family=poisson)
         coef(m1)
         ## (Intercept)     degdays    year1957
         ##  3.49492453  0.08512651  0.21688760

         dat$pred <- predict(m1, type="response")
         libs(lattice)
         libs(latticeExtra)
         xyplot(leaves~degdays, data=dat, groups=year, type=c('p'),
                auto.key=list(columns=2),
                main="mead.cauliflower - observed (symbol) & fitted (line)",
                xlab="degree days", ylab="Number of leaves", ) +
           xyplot(pred~degdays, data=dat, groups=year, type=c('l'), col="black")


         ## End(Not run)
