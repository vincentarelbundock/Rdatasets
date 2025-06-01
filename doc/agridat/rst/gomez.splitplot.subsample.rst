.. container::

   .. container::

      ========================= ===============
      gomez.splitplot.subsample R Documentation
      ========================= ===============

      .. rubric:: Split-plot experiment of rice, with subsamples
         :name: split-plot-experiment-of-rice-with-subsamples

      .. rubric:: Description
         :name: description

      Split-plot experiment of rice, with subsamples

      .. rubric:: Format
         :name: format

      A data frame with 186 observations on the following 5 variables.

      ``time``
         time factor, T1-T4

      ``manage``
         management, M1-M6

      ``rep``
         rep/block, R1-R3

      ``sample``
         subsample, S1-S2

      ``height``
         plant height (cm)

      .. rubric:: Details
         :name: details

      A split-plot experiment in three blocks. Whole-plot is
      'management', sub-plot is 'time' of application, with two
      subsamples. The data are the heights, measured on two single-hill
      sampling units in each plot.

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 481.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(gomez.splitplot.subsample)
         dat <- gomez.splitplot.subsample

         libs(HH)
         interaction2wt(height ~ rep + time + manage, data=dat,
                        x.between=0, y.between=0,
                        main="gomez.splitplot.subsample - plant height")


         # Management totals, Gomez table 6.8
         # tapply(dat$height, dat$manage, sum)

         # Gomez table 6.11 analysis of variance
         m1 <- aov(height ~ rep + manage + time + manage:time +
                   Error(rep/manage/time), data=dat)
         summary(m1)
         ## Error: rep
         ##     Df Sum Sq Mean Sq
         ## rep  2   2632    1316

         ## Error: rep:manage
         ##           Df Sum Sq Mean Sq F value Pr(>F)
         ## manage     7   1482  211.77   2.239 0.0944 .
         ## Residuals 14   1324   94.59
         ## ---
         ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

         ## Error: rep:manage:time
         ##             Df Sum Sq Mean Sq F value   Pr(>F)
         ## time         3  820.8  273.61   7.945 0.000211 ***
         ## manage:time 21  475.3   22.63   0.657 0.851793
         ## Residuals   48 1653.1   34.44
         ## ---
         ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

         ## Error: Within
         ##           Df Sum Sq Mean Sq F value Pr(>F)
         ## Residuals 96  167.4   1.744


         ## End(Not run)
