.. container::

   .. container::

      ============= ===============
      crowder.seeds R Documentation
      ============= ===============

      .. rubric:: Germination of Orobanche seeds for two genotypes and
         two treatments.
         :name: germination-of-orobanche-seeds-for-two-genotypes-and-two-treatments.

      .. rubric:: Description
         :name: description

      Number of Orobanche seeds tested/germinated for two genotypes and
      two treatments.

      .. rubric:: Format
         :name: format

      ``plate``
         Factor for replication

      ``gen``
         Factor for genotype with levels ``O73``, ``O75``

      ``extract``
         Factor for extract from ``bean``, ``cucumber``

      ``germ``
         Number of seeds that germinated

      ``n``
         Total number of seeds tested

      .. rubric:: Details
         :name: details

      Egyptian broomrape, *orobanche aegyptiaca* is a parasitic plant
      family. The plants have no chlorophyll and grow on the roots of
      other plants. The seeds remain dormant in soil until certain
      compounds from living plants stimulate germination.

      Two genotypes were studied in the experiment, *O. aegyptiaca 73*
      and *O. aegyptiaca 75*. The seeds were brushed with one of two
      extracts prepared from either a bean plant or cucmber plant.

      The experimental design was a 2x2 factorial, each with 5 or 6 reps
      of plates.

      .. rubric:: Source
         :name: source

      Crowder, M.J., 1978. Beta-binomial anova for proportions. *Appl.
      Statist.*, 27, 34-37. https://doi.org/10.2307/2346223

      .. rubric:: References
         :name: references

      N. E. Breslow and D. G. Clayton. 1993. Approximate inference in
      generalized linear mixed models. *Journal of the American
      Statistical Association*, 88:9-25. https://doi.org/10.2307/2290687

      Y. Lee and J. A. Nelder. 1996. Hierarchical generalized linear
      models with discussion. *J. R. Statist. Soc. B*, 58:619-678.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(crowder.seeds)
           dat <- crowder.seeds
           m1.glm <- m1.glmm <- m1.glmmtmb <- m1.hglm <- NA


           # ----- Graphic
           libs(lattice)
           dotplot(germ/n~gen|extract, dat, main="crowder.seeds")


           # --- GLMM.  Assumes Gaussian random effects
           libs(MASS)
           m1.glmm <- glmmPQL(cbind(germ, n-germ) ~ gen*extract, random= ~1|plate,
                              family=binomial(), data=dat)
           summary(m1.glmm)
           ## round(summary(m1.glmm)$tTable,2)
           ##                        Value Std.Error DF t-value p-value
           ## (Intercept)            -0.44      0.25 17   -1.80    0.09
           ## genO75                 -0.10      0.31 17   -0.34    0.74
           ## extractcucumber         0.52      0.34 17    1.56    0.14
           ## genO75:extractcucumber  0.80      0.42 17    1.88    0.08


           # ----- glmmTMB
           libs(glmmTMB)
           m1.glmmtmb <- glmmTMB(cbind(germ, n-germ) ~ gen*extract + (1|plate),
                                 data=dat,
                                 family=binomial)
           summary(m1.glmmtmb)
           ## round(summary(m1.glmmtmb)$coefficients$cond , 2)
           ##                        Estimate Std. Error z value Pr(>|z|)
           ## (Intercept)               -0.45       0.22   -2.03     0.04
           ## genO75                    -0.10       0.28   -0.35     0.73
           ## extractcucumber            0.53       0.30    1.74     0.08
           ## genO75:extractcucumber     0.81       0.38    2.11     0.04
          

         ## End(Not run)
