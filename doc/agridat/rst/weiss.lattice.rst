.. container::

   .. container::

      ============= ===============
      weiss.lattice R Documentation
      ============= ===============

      .. rubric:: Lattice experiment in soybeans.
         :name: lattice-experiment-in-soybeans.

      .. rubric:: Description
         :name: description

      Lattice experiment in soybeans.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("weiss.lattice")

      .. rubric:: Format
         :name: format

      A data frame with 196 observations on the following 5 variables.

      ``yield``
         yield (bu/ac)

      ``gen``
         genotype factor, 49 levels

      ``rep``
         rep factor, 4 levels

      ``col``
         column

      ``row``
         row

      .. rubric:: Details
         :name: details

      Yield test of 49 soybean varieties, grown at Ames, IA, in 1938.
      Plot dimensions were 3x16 feeet. The varieties are compared to
      variety 26 (Mukden).

      It is not clear how the reps were positioned in the field. On the
      one hand, the middle three columns of each rep/square are higher
      yielding, giving the appearance of the reps being stacked on top
      of each other. On the other hand, the analysis by Weiss uses 24
      degrees of freedom 4*(7-1) to fit a separate effect for each
      column in each rep (instead of across reps).

      .. rubric:: Source
         :name: source

      Weiss, Martin G. and Cox, Gertrude M. (1939). Balanced Incomplete
      Block and Lattice Square Designs for Testing Yield Differences
      Among Large Numbers of Soybean Varieties. Table 5. *Agricultural
      Research Bulletins, Nos. 251-259*.
      https://lib.dr.iastate.edu/ag_researchbulletins/24/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(weiss.lattice)
           dat <- weiss.lattice

           libs(desplot)
           desplot(dat, yield~col*row|rep,
                   text=gen, shorten="none", cex=.8, aspect=3/16, # true aspect
                   main="weiss.lattice (layout uncertain)", xlab="Soybean yields")


           dat <- transform(dat, xf=factor(col), yf=factor(row))
           m1 <- lm(terms(yield ~ rep + rep:xf + rep:yf + gen, keep.order=TRUE), data=dat)
           anova(m1) # Matches Weiss table 7
           ## Response: yield
           ##           Df  Sum Sq Mean Sq F value    Pr(>F)
           ## rep        3   91.57  30.525  4.7414 0.0039709 **
           ## rep:xf    24 2913.43 121.393 18.8557 < 2.2e-16 ***
           ## rep:yf    24  390.21  16.259  2.5254 0.0007734 ***
           ## gen       48 1029.87  21.456  3.3327 2.652e-07 ***
           ## Residuals 96  618.05   6.438
           
           # ----------

           if(require("asreml", quietly=TRUE)){
             libs(asreml)
             m2 <- asreml(yield ~ rep + rep:xf + rep:yf + gen, data=dat)
             # Weiss table 6 means
             wald(m2)
             predict(m2, data=dat, classify="gen")$pvals
             ##  gen pred.value std.error  est.stat
             ##  G01      27.74     1.461 Estimable
             ##  G02      24.95     1.461 Estimable
             ##  G03      24.38     1.461 Estimable
             ##  G04      28.05     1.461 Estimable
             ##  G05      19.6      1.461 Estimable
             ##  G06      23.79     1.461 Estimable
           }
           

         ## End(Not run)
