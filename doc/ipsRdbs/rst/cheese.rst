.. container::

   .. container::

      ====== ===============
      cheese R Documentation
      ====== ===============

      .. rubric:: Testing of cheese data set
         :name: testing-of-cheese-data-set

      .. rubric:: Description
         :name: description

      Testing of cheese data set

      .. rubric:: Usage
         :name: usage

      .. code:: R

         cheese

      .. rubric:: Format
         :name: format

      A data frame with 30 rows and 5 columns

      Taste
         A measure of taste quality of cheese

      AceticAcid
         Concentration of Acetic acid

      H2S
         Concentration of hydrogen sulphide

      LacticAcid
         Concentration lactic acid

      logH2S
         Logarithm of H2S

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(cheese)
         summary(cheese)
         pairs(cheese)
         cheese.lm <- lm(Taste ~ AceticAcid +  LacticAcid + logH2S, data=cheese, subset=2:30)
         # Check the diagnostics 
         plot(cheese.lm$fit, cheese.lm$res, xlab="Fitted values", ylab = "Residuals")
         abline(h=0)
         # Should be a random scatter
         qqnorm(cheese.lm$res, col=2)
         qqline(cheese.lm$res, col="blue")
         summary(cheese.lm)
         cheese.lm2 <- lm(Taste ~ LacticAcid + logH2S, data=cheese)
         # Check the diagnostics 
         plot(cheese.lm2$fit, cheese.lm2$res, xlab="Fitted values", ylab = "Residuals")
         abline(h=0)
         qqnorm(cheese.lm2$res, col=2)
         qqline(cheese.lm2$res, col="blue")
         summary(cheese.lm2)
         # How can we predict? 
         newcheese <- data.frame(AceticAcid = 300, LacticAcid = 1.5, logH2S=4)
         cheese.pred <- predict(cheese.lm2, newdata=newcheese, se.fit=TRUE)
         cheese.pred
         # Obtain confidence interval 
         cheese.pred$fit + c(-1, 1) * qt(0.975, df=27) * cheese.pred$se.fit
         # Using R to predict  
         cheese.pred.conf.limits <- predict(cheese.lm2, newdata=newcheese, interval="confidence")
         cheese.pred.conf.limits
         # How to find prediction interval 
         cheese.pred.pred.limits <- predict(cheese.lm2, newdata=newcheese, interval="prediction")
         cheese.pred.pred.limits
