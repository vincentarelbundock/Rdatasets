.. container::

   .. container::

      ====== ===============
      puffin R Documentation
      ====== ===============

      .. rubric:: Puffin nesting data set. It contains data regarding
         nesting habits of common puffin
         :name: puffin-nesting-data-set.-it-contains-data-regarding-nesting-habits-of-common-puffin

      .. rubric:: Description
         :name: description

      Puffin nesting data set. It contains data regarding nesting habits
      of common puffin

      .. rubric:: Usage
         :name: usage

      .. code:: R

         puffin

      .. rubric:: Format
         :name: format

      A data frame with 38 rows and 5 columns:

      Nesting_Frequency
         Number of nests

      Grass_Cover
         Percentage of area covered by grass

      Mean_Soil_Depth
         Mean soil depth in centimeter

      Slope_Angle
         Slope angle in degrees

      Distance_from_Edge
         Distance of the plot from the cliff edge in meter

      .. rubric:: Source
         :name: source

      Nettleship (1972).

      .. rubric:: References
         :name: references

      Nettleship DN (1972). “Breeding Success of the Common Puffin
      (Fratercula arctica L.) on Different Habitats at Great Island,
      Newfoundland.” *Ecological Monographs*, **42**, 239-268.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         head(puffin)
         dim(puffin)
         summary(puffin)
         pairs(puffin)
         puffin$sqrtfreq <- sqrt(puffin$Nesting_Frequency)
         puff.sqlm <- lm(sqrtfreq~ Grass_Cover + Mean_Soil_Depth + Slope_Angle 
         +Distance_from_Edge, data=puffin) 
         old.par <- par(no.readonly = TRUE)
         par(mfrow=c(2,1))
         qqnorm(puff.sqlm$res,main="Normal probability plot", col=2)
         qqline(puff.sqlm$res, col="blue")
         plot(puff.sqlm$fit, puff.sqlm$res,xlab="Fitted values",ylab="Residuals", 
         main="Anscombe plot")
         abline(h=0)
         summary(puff.sqlm)
         par(old.par)
         #####################################
         # F test for two betas at the  same time: 
         ######################################
         puff.sqlm2 <- lm(sqrtfreq~ Mean_Soil_Depth + Distance_from_Edge, data=puffin) 
         anova(puff.sqlm)
         anova(puff.sqlm2)
         fval <-  1/2*(14.245-12.756)/0.387 # 1.924 
         qf(0.95, 2, 33) # 3.28
         1-pf(fval, 2, 33) # 0.162
         anova(puff.sqlm2, puff.sqlm)
