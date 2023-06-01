.. container::

   ========== ===============
   schooldata R Documentation
   ========== ===============

   .. rubric:: School Data
      :name: schooldata

   .. rubric:: Description
      :name: description

   School Data, from Charnes et al. (1981). The aim is to explain scores
   on 3 different tests, ``reading``, ``mathematics`` and ``selfesteem``
   from 70 school sites by means of 5 explanatory variables related to
   parents and teachers.

   .. rubric:: Usage
      :name: usage

   ::

      data(schooldata)

   .. rubric:: Format
      :name: format

   A data frame with 70 observations on the following 8 variables.

   ``education``
      Education level of mother as measured in terms of percentage of
      high school graduates among female parents

   ``occupation``
      Highest occupation of a family member according to a pre-arranged
      rating scale

   ``visit``
      Parental visits index representing the number of visits to the
      school site

   ``counseling``
      Parent counseling index calculated from data on time spent with
      child on school-related topics such as reading together, etc.

   ``teacher``
      Number of teachers at a given site

   ``reading``
      Reading score as measured by the Metropolitan Achievement Test

   ``mathematics``
      Mathematics score as measured by the Metropolitan Achievement Test

   ``selfesteem``
      Coopersmith Self-Esteem Inventory, intended as a measure of
      self-esteem

   .. rubric:: Details
      :name: details

   This dataset was shamelessly borrowed from the ``FRB`` package.

   The relationships among these variables are unusual, a fact only
   revealed by plotting.

   .. rubric:: Source
      :name: source

   A. Charnes, W.W. Cooper and E. Rhodes (1981). Evaluating Program and
   Managerial Efficiency: An Application of Data Envelopment Analysis to
   Program Follow Through. *Management Science*, **27**, 668-697.

   .. rubric:: Examples
      :name: examples

   ::

      data(schooldata)
      # initial screening
      plot(schooldata)

      # better plot
      library(corrgram)
      corrgram(schooldata, 
               lower.panel=panel.ellipse, 
               upper.panel=panel.pts)

      #fit the MMreg model
      school.mod <- lm(cbind(reading, mathematics, selfesteem) ~ 
                           education + occupation + visit + counseling + teacher, data=schooldata)

      # shorthand: fit all others
      school.mod <- lm(cbind(reading, mathematics, selfesteem) ~ ., data=schooldata)
      car::Anova(school.mod)

      # HE plots
      heplot(school.mod, fill=TRUE, fill.alpha=0.1)
      pairs(school.mod, fill=TRUE, fill.alpha=0.1)

      # robust model, using robmlm()
      school.rmod <- robmlm(cbind(reading, mathematics, selfesteem) ~ ., data=schooldata)
      # note that counseling is now significant
      car::Anova(school.rmod)

      # Index plot of the weights
      wts <- school.rmod$weights
      notable <- which(wts < 0.8)
      plot(wts, type = "h", col="gray", ylab = "Observation weight")
      points(1:length(wts), wts, 
             pch=16,
             col = ifelse(wts < 0.8, "red", "black"))

      text(notable, wts[notable],
           labels = notable,
           pos = 3,
           col = "red")


      # Index plot of the weights
      wts <- school.rmod$weights
      notable <- which(wts < 0.8)
      plot(wts, type = "h", col="gray", ylab = "Observation weight")
      points(1:length(wts), wts, 
             pch=16,
             col = ifelse(wts < 0.8, "red", "black"))

      text(notable, wts[notable],
           labels = notable,
           pos = 3,
           col = "red")


      # compare classical HE plot with that based on the robust model
      heplot(school.mod, cex=1.4, lty=1, fill=TRUE, fill.alpha=0.1)
      heplot(school.rmod, 
             add=TRUE, 
             error.ellipse=TRUE, 
             lwd=c(2,2), lty=c(2,2), 
               term.labels=FALSE, err.label="", 
               fill=TRUE)
