.. container::

   .. container::

      =========== ===============
      germination R Documentation
      =========== ===============

      .. rubric:: Germination of three crops
         :name: germination-of-three-crops

      .. rubric:: Description
         :name: description

      Germination data were obtained from experiments involving the
      three species mungbean, rice, and wheat, which were opposed to
      different temperatures between 10 and 40 degrees Celsius.
      Experiments lasted at most 18 days.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(germination)

      .. rubric:: Format
         :name: format

      A data frame with 192 observations on the following 5 variables.

      ``temp``
         a numeric vector of temperatures that seeds were exposed to

      ``species``
         a factor with levels ``mungbean`` ``rice`` ``wheat``

      ``start``
         a numeric vector of left endpoints of the monitoring intervals

      ``end``
         a numeric vector of right endpoints of the monitoring intervals

      ``germinated``
         a numeric vector giving the numbers of seeds germinated

      .. rubric:: Details
         :name: details

      For each of the three species mungbean, rice, and wheat, a total
      of 20 seeds were uniformly distributed on filter paper in a petri
      dish (diameter: 9.0cm) and then placed in dark climate cabinets
      with different temperatures (10, 16, 22, 28, 34, 40 degrees
      Celsius). Not all of the temperatures were applied to all species.
      The germinated seeds were counted and removed from the petri dish
      on a daily basis up to 18 days (or until all seeds had
      germinated). I

      n this experiment we also assume that the upper limit of the
      proportion germinated is a parameter that has to be estimated from
      the data. Moreover, we assume that different combinations of
      species and temperature may lead to different germination curves
      with respect to slope, time required for 50% germination, and
      upper limit.

      .. rubric:: References
         :name: references

      Ritz, C., Pipper, C. B. and Streibig, J. C. (2013) Analysis of
      germination data from agricultural experiments, *Europ. J.
      Agronomy*, **45**, 1–6.

      .. rubric:: See Also
         :name: see-also

      Analysis of a single germination curve is shown for ``chickweed``.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Fitting two-parameter log-logistic curves to each combination of species and temperature 
         ##  (upper limit fixed at 1)
         ## Note: Rows 24 and 62 are omitted from the dataset (all mungbean seeds germinated 
         ##  and thus no right-censoring in this case)

         ## germLL.2 <- drm(germinated ~ start + end, species:factor(temp), 
         ## data = germination[c(1:23, 25:61, 63:192), ], fct = LL.2(), type = "event")
         ## plot(germLL.2, ylim=c(0, 1.5), legendPos=c(2.5,1.5))  # plotting the fitted curves and the data
         ## summary(germLL.2)  # showing the parameter estimates

         ## Fitting two-parameter log-logistic curves to each combination of species and temperature
         ## Note: the argument "start" may be used for providing sensible initial 
         ##  parameter values for estimation procedure (is needed occasionally)
         ##  (initial values were obtained from the model fit germLL.2)
         ## Note also: the argument "upper" ensures that the upper limit cannot exceed 1
         ## (however, no restrictions are imposed on the two remaining parameters 
         ## (as indicated by an infinite value)

         ## germLL.3 <- drm(germinated~start+end, species:factor(temp), 
         ## data = germination[c(1:23, 25:61, 63:192), ], fct = LL.3(), type = "event",
         ## start = c(coef(germLL.2)[1:13], rep(0.7,13), coef(germLL.2)[14:26]), 
         ## upper = c(rep(Inf, 13), rep(1, 13), rep(Inf, 13)))

         ## Plotting the fitted curves and the data
         ## plot(germLL.3, ylim = c(0, 1.5), legendPos = c(2.5,1.5))

         ## Showing the parameter estimates
         ## summary(germLL.3)

         ## Showing the parameter estimates with robust standard errors
         ## library(lmtest)
         ## coeftest(germLL.3, vcov = sandwich) 

         ## Calculating t50 with associated standard errors
         ## ED(germLL.3, 50)

         ## Calculating t10, t20, t50 with 95% confidence intervals
         ## ED(germLL.3, c(10, 20, 50), interval = "delta")

         ## Comparing t50 between combinations by means of approximate t-tests
         ## compParm(germLL.3, "e", "-")

         ## Making plots of fitted regression curves for each species

         ## Plot for mungbean
         #plot(germLL.3, log="", ylim=c(0, 1), xlim=c(0, 20), 
         #level=c("mungbean:10", "mungbean:16"), 
         #lty=2:3, lwd = 1.5,
         #xlab="Time (days)", 
         #ylab="Proportion germinated",  
         #main="Mungbean",
         #legendPos=c(3, 1.05), legendText=c(expression(10*degree), expression(16*degree)))

         ## Plot for rice
         #plot(germLL.3, log="", ylim=c(0, 1), xlim=c(0, 20), 
         #level=c("rice:16", "rice:22", "rice:28", "rice:34", "rice:40"), 
         #lty=2:6, lwd = 1.5,
         #xlab="Time (days)", 
         #ylab="Proportion germinated",
         #main="Rice",   
         #pch=2:6,
         #legendPos=c(3, 1.05), legendText=c(expression(16*degree), expression(22*degree), 
         #expression(28*degree), expression(34*degree), expression(40*degree)))

         ## Plot for wheat
         #plot(germLL.3, log="", ylim=c(0, 1), xlim=c(0, 20), 
         #level=c("wheat:10", "wheat:16", "wheat:22", "wheat:28", "wheat:34", "wheat:40"), 
         #lty=c("dashed","dotted","dotdash","longdash","twodash","232A"), lwd = 1.5,
         #xlab="Time (days)", 
         #ylab="Proportion germinated", 
         #main="Wheat",
         #legendPos=c(3, 1.05), 
         #legendText=c(expression(10*degree), expression(16*degree), expression(22*degree), 
         #expression(28*degree), expression(34*degree), expression(40*degree)))
