.. container::

   .. container::

      ===== ===============
      cfail R Documentation
      ===== ===============

      .. rubric:: Weekly number of failures of a university computer
         system over a period of two years. This is a data vector
         containing 104 values.
         :name: weekly-number-of-failures-of-a-university-computer-system-over-a-period-of-two-years.-this-is-a-data-vector-containing-104-values.

      .. rubric:: Description
         :name: description

      Weekly number of failures of a university computer system over a
      period of two years. This is a data vector containing 104 values.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cfail

      .. rubric:: Format
         :name: format

      An object of class ``numeric`` of length 104.

      .. rubric:: Examples
         :name: examples

      .. code:: R

          summary(cfail)
          # 95% Confidence interval 
          c(3.75-1.96 * 3.381/sqrt(104), 3.75+1.96*3.381/sqrt(104)) # =(3.10,4.40).
          x <- cfail 
          n <- length(x)
          h <- qnorm(0.975) 
          # 95% Confidence interval Using quadratic inversion 
          mean(x) + (h*h)/(2*n) + c(-1, 1) * h/sqrt(n) * sqrt(h*h/(4*n) + mean(x))
          # Modelling 
          # Observed frequencies 
          obs_freq <- as.vector(table(x))
          # Obtain unique x values 
          xuniques <- sort(unique(x))
          lam_hat <- mean(x)
          fit_freq <- n * dpois(xuniques, lambda=lam_hat)
          fit_freq <- round(fit_freq, 1)
          # Create a data frame for plotting 
          a <- data.frame(xuniques=xuniques, obs_freq = obs_freq, fit_freq=fit_freq)
          barplot(rbind(obs_freq, fit_freq), args.legend = list(x = "topright"), 
          xlab="No of weekly computer failures",  
          names.arg = xuniques,  beside=TRUE, col=c("darkblue","red"), 
          legend =c("Observed", "Fitted"), 
          main="Observed and Poisson distribution fitted frequencies 
          for the computer failure data: cfail")
