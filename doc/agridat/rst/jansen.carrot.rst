.. container::

   .. container::

      ============= ===============
      jansen.carrot R Documentation
      ============= ===============

      .. rubric:: Infestation of carrots by fly larvae
         :name: infestation-of-carrots-by-fly-larvae

      .. rubric:: Description
         :name: description

      Infestation of 16 carrot genotypes by fly larvae, comparing 2
      treatments in 16 blocks.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("jansen.carrot")

      .. rubric:: Format
         :name: format

      A data frame with 96 observations on the following 5 variables.

      ``trt``
         treatment

      ``gen``
         genotype

      ``block``
         block

      ``n``
         number of carrots sampled per plot

      ``y``
         number of carrots infested per plot

      .. rubric:: Details
         :name: details

      This experiment was designed to compare different genotypes of
      carrots with respect to their resistance to infestation by larvae
      of the carrotfly.

      There were 16 genotypes, 2 levels of pest-control treatments,
      conducted in 3 randomized complete blocks. About 50 carrots were
      sampled from each plot and evaluated. The data show the number of
      carrots and the number infested by fly larvae.

      Used with permission of J. Jansen. Electronic version supplied by
      Miroslav Zoric.

      .. rubric:: Source
         :name: source

      J. Jansen & J.A. Hoekstra (1993). The analysis of proportions in
      agricultural experiments by a generalized linear mixed model.
      Statistica Neerlandica, 47(3), 161-174.
      https://doi.org/10.1111/j.1467-9574.1993.tb01414.x

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(jansen.carrot)
         dat <- jansen.carrot

         libs(lattice)
         dotplot(gen ~ y/n, data=dat, group=trt, auto.key=TRUE,
                 main="jansen.carrot",
                 xlab="Proportion of carrots infected per block", ylab="Genotype")

           # Not run because CRAN wants < 5 seconds per example.  This is close.
           libs(lme4)
           # Tentative model.  Needs improvement.
           m1 <- glmer(cbind(y,n-y) ~ gen*trt + (1|block),
                       data=dat, family=binomial)
           summary(m1)
           # Todo: Why are these results different from Jansen?
           # Maybe he used ungrouped bernoulli data?  Too slow with 4700 obs  

         ## End(Not run)
