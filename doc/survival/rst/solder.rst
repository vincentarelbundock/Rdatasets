.. container::

   .. container::

      ====== ===============
      solder R Documentation
      ====== ===============

      .. rubric:: Data from a soldering experiment
         :name: data-from-a-soldering-experiment

      .. rubric:: Description
         :name: description

      In 1988 an experiment was designed and implemented at one of
      AT&T's factories to investigate alternatives in the "wave
      soldering" procedure for mounting electronic componentes to
      printed circuit boards. The experiment varied a number of factors
      relevant to the process. The response, measured by eye, is the
      number of visible solder skips.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         solder
         data(solder, package="survival")

      .. rubric:: Format
         :name: format

      A data frame with 900 observations on the following 6 variables.

      ``Opening``
         the amount of clearance around the mounting pad (3 levels)

      ``Solder``
         the amount of solder (Thick or Thin)

      ``Mask``
         type and thickness of the material used for the solder mask
         (A1.5, A3, A6, B3, B6)

      ``PadType``
         the geometry and size of the mounting pad (10 levels)

      ``Panel``
         each board was divided into 3 panels

      ``skips``
         the number of skips

      .. rubric:: Details
         :name: details

      After the first 1/2 of the experiment the A6 mask, which was doing
      the worst, was abandoned and the freed up space used for further
      replicates of A3. This leads to an unbalanced experiment with some
      missing A6 combinations.

      This data set is used as a detailed example in chapter 1 of
      Chambers and Hastie. However, they chose to use only a subset of
      the data, i.e., observations 1-360 and 541-900 form a balanced
      design of 3*2*10*3= 180 observations for each of four mask types
      (A1.5, A3, B3, B6).

      .. rubric:: References
         :name: references

      J Chambers and T Hastie, Statistical models in S. Chapman and
      Hall, 1993.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         fit1 <- glm(skips ~ Opening * Solder, poisson, solder,
                     subset= (Mask != "A6"))
         anova(fit1)  # The interaction is important
         dummy <- expand.grid(Opening= c("S", "M", "L"), Solder=c("Thin", "Thick"))
         yhat <- matrix(predict(fit1, newdata=dummy), ncol=2,
                     dimnames=list(Opening= c("S", "M", "L"), Solder=c("Thin", "Thick")))
         yhat <- cbind(yhat, difference= yhat[,1]- yhat[,2])
         round(yhat, 1) # thin and thick have  different patterns

         # The balanced subset used by Chambers and Hastie
         #   contains the first 180 of each mask and deletes mask A6. 
         index <- 1 + (1:nrow(solder)) - match(solder$Mask, solder$Mask)
         solder.balance <- droplevels(subset(solder, Mask != "A6" & index <= 180))
