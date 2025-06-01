.. container::

   .. container::

      ================= ===============
      hanover.whitepine R Documentation
      ================= ===============

      .. rubric:: Mating crosses of white pine trees
         :name: mating-crosses-of-white-pine-trees

      .. rubric:: Description
         :name: description

      Mating crosses of white pine trees

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("hanover.whitepine")

      .. rubric:: Format
         :name: format

      A data frame with 112 observations on the following 4 variables.

      ``rep``
         replicate

      ``female``
         female parent

      ``male``
         male parent

      ``length``
         epicotyl length, cm

      .. rubric:: Details
         :name: details

      Four male (pollen parent) White Pine trees were mated to seven
      female trees and 2654 progeny were grown in four replications, one
      plot per mating in each replication. Parent trees were sourced
      from Idaho, USA. The data are plot means of epicotyl length.

      Becker (1984) used these data to demonstrate the calculation of
      heritability.

      .. rubric:: Source
         :name: source

      Hanover, James W and Barnes, Burton V. (1962). Heritability of
      height growth in year-old western white pine. *Proc Forest Genet
      Workshop*. 22, 71–76.

      Walter A. Becker (1984). *Manual of Quantitative Genetics*, 4th
      ed. Page 83.

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(hanover.whitepine)
           dat <- hanover.whitepine

           libs(lattice)
           # Relatively high male-female interaction in growth comared
           # to additive gene action. Response is more consistent within
           # male progeny than female progeny.
           # with(dat, interaction.plot(female, male, length))
           # with(dat, interaction.plot(male, female, length))
           bwplot(length ~ male|female, data=dat,
                  main="hanover.whitepine - length for male:female crosses",
                  xlab="Male parent", ylab="Epicotyl length")
           
           # Progeny sums match Becker p 83
           sum(dat$length) # 380.58
           aggregate(length ~  female + male, data=dat, FUN=sum)
           
           # Sum of squares matches Becker p 85
           m1 <- aov(length ~ rep + male + female + male:female, data=dat)
           anova(m1)
           
           # Variance components match Becker p. 85
           libs(lme4)
           libs(lucid)
           m2 <- lmer(length ~ (1|rep) + (1|male) + (1|female) + (1|male:female), data=dat)
           #as.data.frame(lme4::VarCorr(m2))
           vc(m2)
           ##         grp        var1 var2    vcov  sdcor
           ## male:female (Intercept) <NA> 0.1369  0.3699
           ##      female (Intercept) <NA> 0.02094 0.1447
           ##        male (Intercept) <NA> 0.1204  0.3469
           ##         rep (Intercept) <NA> 0.01453 0.1205
           ##    Residual        <NA> <NA> 0.2004  0.4477
           
           # Becker used this value for variability between individuals, within plot
           s2w <- 1.109
           
           # Calculating heritability for individual trees
           s2m <- .120
           s2f <- .0209
           s2mf <- .137
           vp <- s2m + s2f + s2mf + s2w  # variability of phenotypes = 1.3869
           4*s2m / vp # heritability male 0.346
           4*s2f / vp # heritability female 0.06
           2*(s2m+s2f)/vp # heritability male+female .203
           # As shown in the boxplot, heritability is stronger through the
           # males than through the females.

         ## End(Not run)
