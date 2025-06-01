.. container::

   .. container::

      ===================== ===============
      gomez.heteroskedastic R Documentation
      ===================== ===============

      .. rubric:: RCB experiment of rice, heteroskedastic varieties
         :name: rcb-experiment-of-rice-heteroskedastic-varieties

      .. rubric:: Description
         :name: description

      RCB experiment of rice, heteroskedastic varieties

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("gomez.heteroskedastic")

      .. rubric:: Format
         :name: format

      A data frame with 105 observations on the following 4 variables.

      ``gen``
         genotype

      ``group``
         group of genotypes

      ``rep``
         replicate

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      RCB design with three reps. Genotypes 1-15 are hybrids, 16-32 are
      parents, 33-35 are checks.

      Used with permission of Kwanchai Gomez.

      .. rubric:: Source
         :name: source

      Gomez, K.A. and Gomez, A.A.. 1984, Statistical Procedures for
      Agricultural Research. Wiley-Interscience. Page 310.

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(agridat)
         data(gomez.heteroskedastic)
         dat <- gomez.heteroskedastic

         # Fix the outlier as reported by Gomez p. 311
         dat[dat$gen=="G17" & dat$rep=="R2","yield"] <- 7.58

         libs(lattice)
         bwplot(gen ~ yield, dat, group=as.numeric(dat$group),
                ylab="genotype", main="gomez.heterogeneous")

         # Match Gomez table 7.28
         m1 <- lm(yield ~ rep + gen, data=dat)
         anova(m1)
         ## Response: yield
         ##           Df Sum Sq Mean Sq F value    Pr(>F)
         ## rep        2  3.306 1.65304  5.6164  0.005528 **
         ## gen       34 40.020 1.17705  3.9992 5.806e-07 ***
         ## Residuals 68 20.014 0.29432
