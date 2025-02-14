.. container::

   .. container::

      ==== ===============
      rice R Documentation
      ==== ===============

      .. rubric:: Riece yield data
         :name: riece-yield-data

      .. rubric:: Description
         :name: description

      Riece yield data

      .. rubric:: Usage
         :name: usage

      .. code:: R

         rice

      .. rubric:: Format
         :name: format

      A data frame with three columns and 68 rows:

      Yield
         Yield of rice in kilograms

      Days
         Number of days after flowering before harvesting

      .. rubric:: Source
         :name: source

      Bal and Ojha (1975).

      .. rubric:: Examples
         :name: examples

      .. code:: R

          summary(rice)
          plot(rice$Days, rice$Yield, pch="*", xlab="Days", ylab="Yield")
          rice$daymin31 <- rice$Days-31
          rice.lm <- lm(Yield ~ daymin31, data=rice)
          summary(rice.lm)
          # Check the diagnostics 
          plot(rice.lm$fit, rice.lm$res, xlab="Fitted values", ylab = "Residuals")
          abline(h=0)
          # Should be a random scatter
          # Needs a quadratic term
          
          qqnorm(rice.lm$res, col=2)
          qqline(rice.lm$res, col="blue")
          rice.lm2 <- lm(Yield ~ daymin31 + I(daymin31^2) , data=rice)
          old.par <- par(no.readonly = TRUE)
          par(mfrow=c(1, 2))
          plot(rice.lm2$fit, rice.lm2$res, xlab="Fitted values", ylab = "Residuals")
          abline(h=0)
          # Should be a random scatter 
          # Much better plot!
          qqnorm(rice.lm2$res, col=2)
          qqline(rice.lm2$res, col="blue")
          summary(rice.lm2)
          par(old.par) # par(mfrow=c(1,1))
          plot(rice$Days,  rice$Yield, xlab="Days", ylab="Yield")
          lines(rice$Days, rice.lm2$fit, lty=1, col=3)
          rice.lm3 <- lm(Yield ~ daymin31 + I(daymin31^2)+I(daymin31^3) , data=rice)
          #check the diagnostics 
          summary(rice.lm3) # Will print the summary of the fitted model 
          #### Predict at a new value of Days=31.1465
          
          # Create a new data set called new
          new <- data.frame(daymin31=32.1465-31)
          
          a <- predict(rice.lm2, newdata=new, se.fit=TRUE) 
          # Confidence interval for the mean of rice yield  at day=31.1465
          a <- predict(rice.lm2, newdata=new, interval="confidence") 
          a
          #          fit      lwr      upr
          # [1,] 3676.766 3511.904 3841.628
          # Prediction interval for a future yield at day=31.1465
          b <- predict(rice.lm2, newdata=new, interval="prediction") 
          b
          # fit      lwr      upr
          #[1,] 3676.766 3206.461 4147.071
