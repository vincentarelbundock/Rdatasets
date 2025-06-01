.. container::

   .. container::

      ============== ===============
      cox.stripsplit R Documentation
      ============== ===============

      .. rubric:: Strip-split-plot of barley with fertilizer, calcium,
         and soil factors.
         :name: strip-split-plot-of-barley-with-fertilizer-calcium-and-soil-factors.

      .. rubric:: Description
         :name: description

      Strip-split-plot of barley with fertilizer, calcium, and soil
      factors.

      .. rubric:: Format
         :name: format

      A data frame with 96 observations on the following 5 variables.

      ``rep``
         replicate, 4 levels

      ``soil``
         soil, 3 levels

      ``fert``
         fertilizer, 4 levels

      ``calcium``
         calcium, 2 levels

      ``yield``
         yield of winter barley

      .. rubric:: Details
         :name: details

      Four different fertilizer treatments are laid out in vertical
      strips, which are then split into subplots with different levels
      of calcium. Soil type is stripped across the split-plot
      experiment, and the entire experiment is then replicated three
      times.

      Sometimes called a split-block design.

      .. rubric:: Source
         :name: source

      Comes from the notes of Gertrude Cox and A. Rotti.

      .. rubric:: References
         :name: references

      SAS/STAT(R) 9.2 User's Guide, Second Edition. Example 23.5
      Strip-Split Plot.
      https://support.sas.com/documentation/cdl/en/statug/63033/HTML/default/viewer.htm#statug_anova_sect030.htm

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(cox.stripsplit)
         dat <- cox.stripsplit

         # Raw means
         # aggregate(yield ~ calcium, data=dat, mean)
         # aggregate(yield ~ soil, data=dat, mean)
         # aggregate(yield ~ calcium, data=dat, mean)

         libs(HH)
         interaction2wt(yield ~ rep + soil + fert + calcium, dat,
                        x.between=0, y.between=0,
                        main="cox.stripsplit")

         # Traditional AOV
         m1 <- aov(yield~ fert*calcium*soil +
                   Error(rep/(fert+soil+calcium:fert+soil:fert)),
                   data=dat)
         summary(m1)

         # With balanced data, the following are all basically identical

         libs(lme4)
         # The 'rep:soil:fert' term causes problems...so we drop it.
         m2 <- lmer(yield ~ fert*soil*calcium + (1|rep) + (1|rep:fert) +
                      (1|rep:soil) + (1|rep:fert:calcium), data=dat)


         if(0){
           # afex uses Kenword-Rogers approach for denominator d.f.
           libs(afex)
           mixed(yield ~ fert*soil*calcium + (1|rep) + (1|rep:fert) +
                   (1|rep:soil) + (1|rep:fert:calcium) + (1|rep:soil:fert), data=dat,
                 control=lmerControl(check.nobs.vs.rankZ="ignore"))
           ##              Effect      stat ndf     ddf F.scaling p.value
           ## 1       (Intercept) 1350.8113   1  3.0009         1  0.0000
           ## 2              fert    3.5619   3  9.0000         1  0.0604
           ## 3              soil    3.4659   2  6.0000         1  0.0999
           ## 4           calcium    1.8835   1 12.0000         1  0.1950
           ## 5         fert:soil    1.2735   6 18.0000         1  0.3179
           ## 6      fert:calcium    4.4457   3 12.0000         1  0.0255
           ## 7      soil:calcium    0.2494   2 24.0000         1  0.7813
           ## 8 fert:soil:calcium    0.3504   6 24.0000         1  0.9027
         }


         ## End(Not run)
