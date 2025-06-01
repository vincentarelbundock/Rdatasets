.. container::

   .. container::

      ============= ===============
      harville.lamb R Documentation
      ============= ===============

      .. rubric:: Birth weight of lambs from different lines/sires
         :name: birth-weight-of-lambs-from-different-linessires

      .. rubric:: Description
         :name: description

      Birth weight of lambs from different lines/sires

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("harville.lamb")

      .. rubric:: Format
         :name: format

      A data frame with 62 observations on the following 4 variables.

      ``line``
         genotype line number

      ``sire``
         sire number

      ``damage``
         dam age, class 1,2,3

      ``weight``
         lamb birth weight

      .. rubric:: Details
         :name: details

      Weight at birth of 62 lambs. There were 5 distinct lines.

      Some sires had multiple lambs. Each dam had one lamb.

      The age of the dam is a category: 1 (1-2 years), 2 (2-3 years) or
      3 (over 3 years).

      Note: Jiang, gives the data in table 1.2, but there is a small
      error. Jiang has a weight 9.0 for sire 31, line 3, age 3. The
      correct value is 9.5.

      .. rubric:: Source
         :name: source

      David A. Harville and Alan P. Fenech (1985). Confidence Intervals
      for a Variance Ratio, or for Heritability, in an Unbalanced Mixed
      Linear Model. *Biometrics*, 41, 137-152.
      https://doi.org/10.2307/2530650

      .. rubric:: References
         :name: references

      Jiming Jiang, Linear and Generalized Linear Mixed Models and Their
      Applications. Table 1.2.

      Andre I. Khuri, Linear Model Methodology. Table 11.5. Page 368.
      https://books.google.com/books?id=UfDvCAAAQBAJ&pg=PA164

      Daniel Gianola, Keith Hammond. Advances in Statistical Methods for
      Genetic Improvement of Livestock. Table 8.1, page 165.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(harville.lamb)
         dat <- harville.lamb
         dat <- transform(dat, line=factor(line), sire=factor(sire), damage=factor(damage))

         library(lattice)
         bwplot(weight ~ line, dat,
                main="harville.lamb",
                xlab="line", ylab="birth weights")

         if(0){
           libs(lme4, lucid)
             
           m1 <- lmer(weight ~  -1 + line + damage + (1|sire), data=dat)
           summary(m1)
           vc(m1) # Khuri reports variances 0.5171, 2.9616
           ##      grp        var1 var2   vcov  sdcor
           ##     sire (Intercept) <NA> 0.5171 0.7191
           ## Residual        <NA> <NA> 2.962  1.721 
           }


         ## End(Not run)
