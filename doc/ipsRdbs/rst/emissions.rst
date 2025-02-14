.. container::

   .. container::

      ========= ===============
      emissions R Documentation
      ========= ===============

      .. rubric:: Nitrous oxide emission data
         :name: nitrous-oxide-emission-data

      .. rubric:: Description
         :name: description

      Nitrous oxide emission data

      .. rubric:: Usage
         :name: usage

      .. code:: R

         emissions

      .. rubric:: Format
         :name: format

      An object of class ``data.frame`` with 54 rows and 13 columns.

      .. rubric:: Source
         :name: source

      Australian Traffic Accident Research Bureau @format A data frame
      with thirteen columns and 54 rows.

      Make
         Make of the car

      Odometer
         Odometer reading of the car

      Capacity
         Engine capacity of the car

      CS505
         A measurement taken while running the engine from a cold start
         for 505 seconds

      T867
         A measurement taken while running the engine in transition from
         cold to hot for 867 seconds

      H505
         A measurement taken while running the hot engine for 505
         seconds

      ADR27
         A previously used measurement standard

      ADR37
         Result of the Australian standard ADR37test

      logCS505
         Logarithm of CS505

      logT867
         Logarithm of T867

      logH505
         Logarithm of H505

      logADR27
         Logarithm of ADR27

      logADR37
         Logarithm of ADR37

      .. rubric:: Examples
         :name: examples

      .. code:: R

          summary(emissions)
          
          rawdata <- emissions[, c(8, 4:7)]
          pairs(rawdata)
         # Fit the model on the raw scale 
         raw.lm <- lm(ADR37 ~ ADR27 + CS505  + T867 + H505, data=rawdata) 
         old.par <- par(no.readonly = TRUE)
         par(mfrow=c(2,1))
         plot(raw.lm$fit, raw.lm$res,xlab="Fitted values",ylab="Residuals", main="Anscombe plot") 
         abline(h=0)
         qqnorm(raw.lm$res,main="Normal probability plot", col=2)
         qqline(raw.lm$res, col="blue")
         # summary(raw.lm)
         logdata <- log(rawdata)
         # This only logs the values but not the column names!
         # We can use the following command to change the column names or you can use
         # fix(logdata) to do it. 
         dimnames(logdata)[[2]] <- c("logADR37", "logCS505", "logT867", "logH505", "logADR27")
         pairs(logdata)
         log.lm <- lm(logADR37 ~ logADR27 + logCS505  + logT867 + logH505, data=logdata) 
         plot(log.lm$fit, log.lm$res,xlab="Fitted values",ylab="Residuals", main="Anscombe plot") 
         abline(h=0)
         qqnorm(log.lm$res,main="Normal probability plot", col=2)
         qqline(log.lm$res, col="blue")
         summary(log.lm)
         log.lm2 <- lm(logADR37 ~ logADR27 + logT867 + logH505, data=logdata) 
         summary(log.lm2)
         plot(log.lm2$fit, log.lm2$res,xlab="Fitted values",ylab="Residuals", main="Anscombe plot") 
         abline(h=0)
         qqnorm(log.lm2$res,main="Normal probability plot", col=2)
         qqline(log.lm2$res, col="blue")
         par(old.par)
         #####################################
         # Multicollinearity Analysis 
         ######################################
         mod.adr27 <-  lm(logADR27 ~ logT867 + logCS505 + logH505, data=logdata) 
         summary(mod.adr27) # Multiple R^2 = 0.9936,
         mod.t867 <-  lm(logT867 ~ logADR27 + logH505 + logCS505, data=logdata)  
         summary(mod.t867) # Multiple R^2 = 0.977,
         mod.cs505 <-  lm(logCS505 ~ logADR27 + logH505 + logT867, data=logdata)  
         summary(mod.cs505) # Multiple R^2 = 0.9837,
         mod.h505 <-  lm(logH505 ~ logADR27 + logCS505 + logT867, data=logdata)  
         summary(mod.h505) # Multiple R^2 = 0.5784,
         # Variance inflation factors 
         vifs <- c(0.9936, 0.977, 0.9837, 0.5784)
         vifs <- 1/(1-vifs) 
         #Condition numbers 
         X <- logdata 
         # X is a copy of logdata 
         X[,1] <- 1
         # the first column of X is 1
         # this is for the intercept 
         X <- as.matrix(X) 
         # Coerces X to be a matrix
         xtx <- t(X) %*% X # Gives X^T X
         eigenvalues <- eigen(xtx)$values
         kappa <- max(eigenvalues)/min(eigenvalues)
         kappa <- sqrt(kappa)
         # kappa = 244 is much LARGER than 30!

         ### Validation statistic
         # Fit the log.lm2 model with the first 45 observations  
         # use the fitted model to predict the remaining 9 observations 
         # Calculate the mean square error validation statistic 
         log.lmsub <- lm(logADR37 ~ logADR27 + logT867 + logH505, data=logdata, subset=1:45) 
         # Now predict all 54 observations using the fitted model
         mod.pred <- predict(log.lmsub, logdata, se.fit=TRUE) 
         mod.pred$fit # provides all the 54 predicted values 
         logdata$pred <- mod.pred$fit
         # Get only last 9 
         a <- logdata[46:54, ]
         validation.residuals <- a$logADR37 - a$pred  
         validation.stat <- mean(validation.residuals^2)
         validation.stat
