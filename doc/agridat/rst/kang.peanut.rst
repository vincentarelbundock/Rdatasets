.. container::

   .. container::

      =========== ===============
      kang.peanut R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of peanuts for 10 genotypes in
         15 environments
         :name: multi-environment-trial-of-peanuts-for-10-genotypes-in-15-environments

      .. rubric:: Description
         :name: description

      Peanut yields for 10 genotypes in 15 environments

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kang.peanut")

      .. rubric:: Format
         :name: format

      A data frame with 590 observations on the following 4 variables.

      ``gen``
         genotype factor, 10 levels

      ``rep``
         replicate factor, 4 levels

      ``yield``
         yield

      ``env``
         environment factor, 15 levels

      .. rubric:: Details
         :name: details

      Florman, Tegua, mf484, mf485, mf487, mf489 have a long crop cycle.
      The others have a short crop cycle.

      This data is also likely used in Casanoves et al 2005, "Evaluation
      of Multienvironment Trials of Peanut Cultivars", but this appears
      to be a slightly smaller subset (only 10 genotypes, and perhaps
      only the years 96,97,98,99). Based on the d.f. in their table 5,
      it appears that environment E13 was grown in 1998. (5 loc \* (4-1)
      = 15, but the table has 14, and 98-99 had only 3 reps instead of 4
      reps.)

      Data from National Institute of Agricultural Technology,
      Argentina.

      .. rubric:: Source
         :name: source

      M. S. Kang, M. Balzarini, and J. L. L. Guerra (2004).
      Genotype-by-environment interaction". In: A. Saxton (2004).
      "Genetic Analysis of Complex Traits Using SAS".

      .. rubric:: References
         :name: references

      Johannes Forkman, Julie Josse, Hans-Peter Piepho (2019).
      Hypothesis Tests for Principal Component Analysis When Variables
      are Standardized. *JABES*
      https://doi.org/10.1007/s13253-019-00355-5

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(kang.peanut)
         dat <- kang.peanut

         # Table 5.1 of Kang et al. (Chapter 5 of Saxton)
         libs(reshape2)
         Y0 <- acast(dat, env~gen, value.var='yield', fun=mean)
         round(Y0,2)

         # GGE biplot of Kang, p. 82.
         libs(gge)
         m1 <- gge(dat, yield~gen*env, scale=FALSE)
         biplot(m1, flip=c(1,1), main="kang.peanut - GGE biplot")

         # Forkman 2019, fig 2
         # m2 <- gge(dat, yield~gen*env, scale=TRUE)
         # biplot(m2, main="kang.peanut - GGE biplot")
         # biplot(m2, comps=3:4, main="kang.peanut - GGE biplot")


         ## End(Not run)
