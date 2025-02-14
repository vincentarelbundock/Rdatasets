.. container::

   .. container::

      ========== ===============
      gasmileage R Documentation
      ========== ===============

      .. rubric:: Gas mileage of four models of car
         :name: gas-mileage-of-four-models-of-car

      .. rubric:: Description
         :name: description

      Gas mileage of four models of car

      .. rubric:: Usage
         :name: usage

      .. code:: R

         gasmileage

      .. rubric:: Format
         :name: format

      A data frame with two columns and eleven rows:

      mileage
         Mileage obtained

      model
         Four types of car models

      .. rubric:: Examples
         :name: examples

      .. code:: R

         summary(gasmileage)
         y <- c(22, 26,  28, 24, 29,   29, 32, 28,  23, 24)
         xx <- c(1,1,2,2,2,3,3,3,4,4)
         # Plot the observations 
         plot(xx, y, col="red", pch="*", xlab="Model", ylab="Mileage")
         # Method1: Hand calculation 
         ni <- c(2, 3, 3, 2)
         means <- tapply(y, xx, mean)
         vars <- tapply(y, xx, var)
         round(rbind(means, vars), 2)
         sum(y^2) # gives 7115
         totalSS <- sum(y^2) - 10 * (mean(y))^2 # gives 92.5 
         RSSf <- sum(vars*(ni-1)) # gives 31.17 
         groupSS <- totalSS - RSSf # gives 61.3331.17/6
         meangroupSS <- groupSS/3 # gives 20.44
         meanErrorSS <- RSSf/6 # gives 5.194
         Fvalue <- meangroupSS/meanErrorSS # gives 3.936 
         pvalue <- 1-pf(Fvalue, df1=3, df2=6)

         #### Method 2: Illustrate using dummy variables
         #################################
         #Create the design matrix X for the full regression model
         g <- 4
         n1 <- 2 
         n2 <- 3
         n3 <- 3
         n4 <- 2
         n <- n1+n2+n3+n4
         X <- matrix(0, ncol=g, nrow=n)       #Set X as a zero matrix initially
         X[1:n1,1] <- 1    #Determine the first column of X
         X[(n1+1):(n1+n2),2] <- 1   #the 2nd column
         X[(n1+n2+1):(n1+n2+n3),3] <- 1    #the 3rd
         X[(n1+n2+n3+1):(n1+n2+n3+n4),4] <- 1    #the 4th 
         #################################
         ####Fitting the  full model####
         #################################
         #Estimation
         XtXinv <- solve(t(X)%*%X)
         betahat <- XtXinv %*%t(X)%*%y   #Estimation of the coefficients
         Yhat <- X%*%betahat   #Fitted Y values
         Resids <- y - Yhat   #Residuals
         SSE <- sum(Resids^2)   #Error sum of squares
         S2hat <- SSE/(n-g)   #Estimation of sigma-square; mean square for error
         Sigmahat <- sqrt(S2hat)

         ##############################################################
         ####Fitting the reduced model -- the 4 means are equal #####
         ##############################################################
         Xr <- matrix(1, ncol=1, nrow=n)
         kr <- dim(Xr)[2]
         #Estimation
         Varr <- solve(t(Xr)%*%Xr)
         hbetar <- solve(t(Xr)%*%Xr)%*%t(Xr)%*% y   #Estimation of the coefficients
         hYr = Xr%*%hbetar   #Fitted Y values
         Resir <- y - hYr   #Residuals
         SSEr <- sum(Resir^2)   #Total sum of squares
         ###################################################################
         ####F-test for comparing the reduced model with the full model ####
         ###################################################################
         FStat <- ((SSEr-SSE)/(g-kr))/(SSE/(n-g))  #The test statistic of the F-test
         alpha <- 0.05
         Critical_value_F <- qf(1-alpha, g-kr,n-g)  #The critical constant of F-test
         pvalue_F <- 1-pf(FStat,g-kr, n-g)   #p-value of F-test

         modelA <- c(22, 26)
         modelB <- c(28, 24, 29)
         modelC <- c(29, 32, 28)
         modelD <- c(23, 24)

         SSerror = sum( (modelA-mean(modelA))^2 ) + sum( (modelB-mean(modelB))^2 ) 
         + sum( (modelC-mean(modelC))^2 ) + sum( (modelD-mean(modelD))^2 )
         SStotal <-  sum( (y-mean(y))^2 ) 
         SSgroup <- SStotal-SSerror

         ####
         #### Method 3: Use the  built-in function lm directly

         #####################################
         aa <- "modelA"
         bb <- "modelB"
         cc <- "modelC"
         dd <- "modelD"
         Expl <- c(aa,aa,bb,bb,bb,cc,cc,cc,dd,dd)
         is.factor(Expl)
         Expl <- factor(Expl)
         model1 <- lm(y~Expl)
         summary(model1)      
         anova(model1)
         ###Alternatively ###

         xxf <- factor(xx)
         is.factor(xxf)
         model2 <- lm(y~xxf)
         summary(model2)
         anova(model2)
