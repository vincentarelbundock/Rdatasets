.. container::

   .. container::

      ============== ===============
      stirret.borers R Documentation
      ============== ===============

      .. rubric:: Corn borer control by application of fungal spores.
         :name: corn-borer-control-by-application-of-fungal-spores.

      .. rubric:: Description
         :name: description

      Corn borer control by application of fungal spores.

      .. rubric:: Format
         :name: format

      A data frame with 60 observations on the following 4 variables.

      ``block``
         block, 15 levels

      ``trt``
         treatment, 4 levels

      ``count1``
         count of borers on August 18

      ``count2``
         count of borers on October 19

      .. rubric:: Details
         :name: details

      Experiment conducted in 1935, Ottawa. European corn borer
      infestation was established by application of egg masses to
      plants. Treatments were applied on July 8 and July 19 at two
      levels, 0 and 40 grams per acre. The number of borers per plot
      were counted on Aug 18 and Oct 19.

      .. rubric:: Source
         :name: source

      Stirrett, George M and Beall, Geoffrey and Timonin, M. (1937). A
      field experiment on the control of the European corn borer,
      Pyrausta nubilalis Hubn, by Beauveria bassiana Vuill. *Sci.
      Agric.*, 17, 587–591. Table 2.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(stirret.borers)
           dat <- stirret.borers

           libs(lattice)
           xyplot(count2~count1|trt,dat,
                  main="stirret.borers - by treatment",
                  xlab="Early count of borers", ylab="Late count")
           
           # Even though the data are counts, Normal distribution seems okay
           # qqmath(~count1|trt, dat, main="stirret.borers")
           
           m1 <- lm(count1 ~ -1 + trt + block, dat)
           anova(m1)
           # predicted means = main effect + average of 15 block effects
           # note block 1 effect is 0
           # coef(m1)[1:4] + sum(coef(m1)[-c(1:4)])/15
           ##  trtBoth trtEarly  trtLate  trtNone 
           ## 47.86667 62.93333 40.93333 61.13333 
           

         ## End(Not run)
