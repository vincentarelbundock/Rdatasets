.. container::

   .. container::

      ============ ===============
      jansen.apple R Documentation
      ============ ===============

      .. rubric:: Infestation of apple shoots by apple canker.
         :name: infestation-of-apple-shoots-by-apple-canker.

      .. rubric:: Description
         :name: description

      Infestation of apple shoots by apple canker.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("jansen.apple")

      .. rubric:: Format
         :name: format

      A data frame with 36 observations on the following 5 variables.

      ``inoculum``
         inoculum level

      ``gen``
         genotype/variety

      ``block``
         block

      ``y``
         number of inoculations developing canker

      ``n``
         number of inoculations

      .. rubric:: Details
         :name: details

      Shoots of apple trees were infected with fungus *Nectria
      galligena*, which may cause apple canker.

      The incoulum density treatment had 3 levels, measured in
      macroconidia per ml.

      There were 4 blocks.

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
         data(jansen.apple)
         dat <- jansen.apple

         libs(lattice)
         xyplot(inoculum ~ y/n|gen, data=dat, group=block,
                layout=c(3,1),
                main="jansen.apple",
                xlab="Proportion infected per block/inoculum",
                ylab="Inoculum level")

         ## libs(lme4)
         ## # Tentative model.  Needs improvement.
         ## m1 <- glmer(cbind(y,n-y) ~ gen + factor(inoculum) + (1|block),
         ##             data=dat, family=binomial)
         ## summary(m1)


         ## End(Not run)
