.. container::

   .. container::

      ======== ===============
      bombhits R Documentation
      ======== ===============

      .. rubric:: Number of bomb hits in London during World War II
         :name: number-of-bomb-hits-in-london-during-world-war-ii

      .. rubric:: Description
         :name: description

      Number of bomb hits in London during World War II

      .. rubric:: Usage
         :name: usage

      .. code:: R

         bombhits

      .. rubric:: Format
         :name: format

      A data frame with two columns and six rows:

      numberhit
         The number of bomb hits during World War II in each of the 576
         areas in London.

      freq
         Frequency of the number of hits

      .. rubric:: Source
         :name: source

      Shaw and Shaw (2019).

      .. rubric:: Examples
         :name: examples

      .. code:: R

          summary(bombhits)
          # Create a vector of data 
          x <- c(rep(0, 229), rep(1, 211), rep(2, 93), rep(3, 35), rep(4, 7), 5)
          y <- c(229, 211, 93, 35, 7, 1) # Frequencies 
          rel_freq <- y/576
          xbar <- mean(x)
          pois_prob <- dpois(x=0:5, lambda=xbar)
          fit_freq <- pois_prob * 576
           #Check 
           cbind(x=0:5, obs_freq=y, rel_freq =round(rel_freq, 4),  
           Poisson_prob=round(pois_prob, 4), fit_freq=round(fit_freq, 1))
           obs_freq <- y
           xuniques <- 0:5
           a <- data.frame(xuniques=0:5, obs_freq =y, fit_freq=fit_freq)
           barplot(rbind(obs_freq, fit_freq), 
           args.legend = list(x = "topright"), 
           xlab="No of bomb hits",  
           names.arg = xuniques,  beside=TRUE, 
           col=c("darkblue","red"), 
           legend =c("Observed", "Fitted"), 
           main="Observed and Poisson distribution fitted frequencies 
           for the number of bomb hits in London")
