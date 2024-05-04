.. container::

   .. container::

      ========= ===============
      heartrate R Documentation
      ========= ===============

      .. rubric:: Heart rate baroreflexes for rabbits
         :name: heart-rate-baroreflexes-for-rabbits

      .. rubric:: Description
         :name: description

      The dataset contains measurements of mean arterial pressure (mmHG)
      and heart rate (b/min) for a baroreflex curve.

      .. rubric:: Usage
         :name: usage

      ::

         data(heartrate)

      .. rubric:: Format
         :name: format

      A data frame with 18 observations on the following 2 variables.

      ``pressure``
         a numeric vector containing measurements of arterial pressure.

      ``rate``
         a numeric vector containing measurements of heart rate.

      .. rubric:: Details
         :name: details

      The dataset is an example of an asymmetric dose-response curve,
      that is not easily handled using the log-logistic or Weibull
      models (``LL.4``, ``LL.5``, ``W1.4`` and ``W2.4``), whereas the
      ``baro5`` model provides a nice fit.

      .. rubric:: Source
         :name: source

      Ricketts, J. H. and Head, G. A. (1999) A five-parameter logistic
      equation for investigating asymmetry of curvature in baroreflex
      studies, *Am. J. Physiol. (Regulatory Integrative Comp. Physiol.
      46)*, **277**, 441–454.

      .. rubric:: Examples
         :name: examples

      ::

         ## Fitting the baro5 model
         heartrate.m1 <- drm(rate~pressure, data=heartrate, fct=baro5())
         plot(heartrate.m1)

         coef(heartrate.m1)

         #Output:
         #b1:(Intercept) b2:(Intercept)  c:(Intercept)  d:(Intercept)  e:(Intercept)
         #      11.07984       46.67492      150.33588      351.29613       75.59392

         ## Inserting the estimated baro5 model function in deriv()
         baro5Derivative <- deriv(~ 150.33588 + ((351.29613 - 150.33588)/
         (1 + (1/(1 + exp((2 * 11.07984 * 46.67492/(11.07984 + 46.67492)) * 
         (log(x) - log(75.59392 ))))) * (exp(11.07984 * (log(x) - log(75.59392)))) + 
         (1 - (1/(1 + exp((2 * 11.07984 * 46.67492/(11.07984 + 46.67492)) * 
         (log(x) - log(75.59392 )))))) * (exp(46.67492 * (log(x) - log(75.59392 )))))), "x", function(x){})

         ## Plotting the derivative
         #pressureVector <- 50:100
         pressureVector <- seq(50, 100, length.out=300)
         derivativeVector <- attr(baro5Derivative(pressureVector), "gradient")
         plot(pressureVector, derivativeVector, type = "l")

         ## Finding the minimum
         pressureVector[which.min(derivativeVector)]
