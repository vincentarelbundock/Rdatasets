.. container::

   .. container::

      ====== ===============
      possum R Documentation
      ====== ===============

      .. rubric:: Body weight and length of possums (tree living furry
         animals who are mostly nocturnal (marsupial) caught in 7
         different regions of Australia.
         :name: body-weight-and-length-of-possums-tree-living-furry-animals-who-are-mostly-nocturnal-marsupial-caught-in-7-different-regions-of-australia.

      .. rubric:: Description
         :name: description

      Body weight and length of possums (tree living furry animals who
      are mostly nocturnal (marsupial) caught in 7 different regions of
      Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         possum

      .. rubric:: Format
         :name: format

      A data frame with 101 rows and 3 columns:

      Body_Weight
         Body weight in kilogram

      Length
         Body length of the possum

      Location
         7 different regions of Australia: (1) Western Austrailia (W.A),
         (2) South Australia (S.A), (3) Northern Territory (N.T), (4)
         Queensland (QuL), (5) New South Wales (NSW), (6) Victoria (Vic)
         and (7) Tasmania (Tas).

      .. rubric:: Source
         :name: source

      Lindenmayer and Donnelly (1995).

      .. rubric:: References
         :name: references

      Lindenmayer DBVKLCRB, Donnelly CF (1995). “Morphological variation
      among columns of the mountain brushtail possum, Trichosurus
      caninus Ogilby (Phalangeridae: Marsupiala).” *Australian Journal
      of Zoology*, **43**, 449-458.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(possum)
          dim(possum)
          summary(possum)
          ## Code lines used in the book
          ## Create a new data set   
          poss <- possum 
          poss$region <- factor(poss$Location)
          levels(poss$region) <- c("W.A", "S.A", "N.T", "QuL", "NSW", "Vic", "Tas")
          colnames(poss)<-c("y","z","Location", "x")
          head(poss)
          # Draw side by side boxplots 
          boxplot(y~x, data=poss, col=2:8, xlab="region", ylab="Weight")
          # Obtain scatter plot 
          # Start with a skeleton plot 
          plot(poss$z, poss$y, type="n", xlab="Length", ylab="Weight")
          # Add points for the seven regions
          for (i in 1:7) {
             points(poss$z[poss$Location==i],poss$y[poss$Location==i],type="p", pch=as.character(i), col=i)
             }
         ## Add legends 
          legend(x=76, y=4.2, legend=paste(as.character(1:7), levels(poss$x)),  lty=1:7, col=1:7)
          # Start  modelling 
          #Fit the model with interaction. 
          poss.lm1<-lm(y~z+x+z:x,data=poss)
          summary(poss.lm1)
          plot(poss$z, poss$y,type="n", xlab="Length", ylab="Weight")
          for (i in 1:7) {
          lines(poss$z[poss$Location==i],poss.lm1$fit[poss$Location==i],type="l",
          lty=i, col=i, lwd=1.8)
          points(poss$z[poss$Location==i],poss$y[poss$Location==i],type="p",
          pch=as.character(i), col=i)
          }
          poss.lm0 <- lm(y~z,data=poss)
          abline(poss.lm0, lwd=3, col=9)
          # Has drawn the seven parallel regression lines
          legend(x=76, y=4.2, legend=paste(as.character(1:7), levels(poss$x)), 
          lty=1:7, col=1:7)
          
          n <- length(possum$Body_Weight)
          # Wrong model since Location is not a numeric covariate 
          wrong.lm <- lm(Body_Weight~Location, data=possum)
          summary(wrong.lm)
          
          nis <- table(possum$Location)
          meanwts <- tapply(possum$Body_Weight, possum$Location, mean)
          varwts <- tapply(possum$Body_Weight, possum$Location, var)
          datasums <- data.frame(nis=nis, mean=meanwts, var=varwts)
          datasums <- data.frame(nis=nis, mean=meanwts, var=varwts)
          modelss <- sum(datasums[,2] * (meanwts - mean(meanwts))^2)
          residss <- sum( (datasums[,2] - 1) * varwts)
          
          fvalue <- (modelss/6) / (residss/94)
          fcritical <- qf(0.95, df1= 6, df2=94)
          x <- seq(from=0, to=12, length=200)
          y <- df(x, df1=6, df2=94)
          plot(x, y, type="l", xlab="", ylab="Density of F(6, 94)", col=4)
          abline(v=fcritical, lty=3, col=3)
          abline(v=fvalue, lty=2, col=2)
          pvalue <- 1-pf(fvalue, df1=6, df2=94)
          
          ### Doing the above in R
          # Convert  the Location column to a factor
          possum$Location <- as.factor(possum$Location)
          summary(possum)  # Now Location is a factor 
           
          # Put the identifiability constraint:
          options(contrasts=c("contr.treatment", "contr.poly"))
          colnames(possum) <- c("y", "z", "x")
          # Fit model M1
          possum.lm1 <- lm(y~x, data=possum)
          summary(possum.lm1)
          anova(possum.lm1)
          possum.lm2 <- lm(y~z, data=poss)
          summary(possum.lm2)
          anova(possum.lm2)
          # Include both location and length but no interaction 
          possum.lm3 <-  lm(y~x+z, data=poss)
          summary(possum.lm3)
          anova(possum.lm3)
          # Include interaction effect 
          possum.lm4 <-  lm(y~x+z+x:z, data=poss)
          summary(possum.lm4)
          anova(possum.lm4)
          anova(possum.lm2, possum.lm3)
          #Check the diagnostics for M3
          plot(possum.lm3$fit, possum.lm3$res,xlab="Fitted values",ylab="Residuals", 
          main="Anscombe plot")
          abline(h=0)
          qqnorm(possum.lm3$res,main="Normal probability plot", col=2)
          qqline(possum.lm3$res, col="blue")
          
