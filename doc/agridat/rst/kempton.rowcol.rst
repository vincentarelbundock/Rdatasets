.. container::

   .. container::

      ============== ===============
      kempton.rowcol R Documentation
      ============== ===============

      .. rubric:: Row-column experiment of wheat
         :name: row-column-experiment-of-wheat

      .. rubric:: Description
         :name: description

      Row-column experiment of wheat, 35 genotypes, 2 reps.

      .. rubric:: Format
         :name: format

      A data frame with 68 observations on the following 5 variables.

      ``rep``
         replicate factor, 2 levels

      ``row``
         row

      ``col``
         column

      ``gen``
         genotype factor, 35 levels

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      Included to illustrate REML analysis of a row-column design.

      .. rubric:: Source
         :name: source

      R A Kempton and P N Fox, *Statistical Methods for Plant Variety
      Evaluation*, Chapman and Hall, 1997.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(kempton.rowcol)
         dat <- kempton.rowcol
         dat <- transform(dat, rowf=factor(row), colf=factor(col))

         libs(desplot)
         desplot(dat, yield~col*row|rep,
                 num=gen, out1=rep, # unknown aspect
                 main="kempton.rowcol")


         # Model with rep, row, col as random.  Kempton, page 62.
         # Use "-1" so that the vcov matrix doesn't include intercept
         libs(lme4)
         m1 <- lmer(yield ~ -1 + gen + rep + (1|rep:rowf) + (1|rep:colf), data=dat)

         # Variance components match Kempton.
         print(m1, corr=FALSE)

         # Standard error of difference for genotypes.  Kempton page 62, bottom.
         covs <- as.matrix(vcov(m1)[1:35, 1:35])
         vars <- diag(covs)
         vdiff <- outer(vars, vars, "+") - 2 * covs
         sed <- sqrt(vdiff[upper.tri(vdiff)])
         min(sed) # Minimum SED
         mean(sed) # Average SED
         max(sed) # Maximum SED


         ## End(Not run)
