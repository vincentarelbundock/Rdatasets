.. container::

   .. container::

      =========== ===============
      cochran.bib R Documentation
      =========== ===============

      .. rubric:: Multi-environment trial of corn, balanced incomplete
         block design
         :name: multi-environment-trial-of-corn-balanced-incomplete-block-design

      .. rubric:: Description
         :name: description

      Balanced incomplete block design in corn

      .. rubric:: Format
         :name: format

      A data frame with 52 observations on the following 3 variables.

      ``loc``
         location/block, 13 levels

      ``gen``
         genotype/line, 13 levels

      ``yield``
         yield, pounds/plot

      .. rubric:: Details
         :name: details

      Incomplete block design. Each loc/block has 4 genotypes/lines. The
      blocks are planted at different locations.

      Conducted in 1943 in North Carolina.

      .. rubric:: Source
         :name: source

      North Carolina Agricultural Experiment Station, United States
      Department of Agriculture.

      .. rubric:: References
         :name: references

      Cochran, W.G. and Cox, G.M. (1957), *Experimental Designs*, 2nd
      ed., Wiley and Sons, New York, p. 448.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(cochran.bib)
         dat <- cochran.bib

         # Show the incomplete-block structure
         libs(lattice)
         redblue <- colorRampPalette(c("firebrick", "lightgray", "#375997"))
         levelplot(yield~loc*gen, dat,
                   col.regions=redblue,
                   xlab="loc (block)", main="cochran.bib - incomplete blocks")

         with(dat, table(gen,loc))
         rowSums(as.matrix(with(dat, table(gen,loc))))
         colSums(as.matrix(with(dat, table(gen,loc))))

         m1 = aov(yield ~ gen + Error(loc), data=dat)
         summary(m1)

         libs(nlme)
         m2 = lme(yield ~ -1 + gen, data=dat, random=~1|loc)


         ## End(Not run)
