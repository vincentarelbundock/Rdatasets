.. container::

   .. container::

      ============= ===============
      pearl.kernels R Documentation
      ============= ===============

      .. rubric:: Counts of yellow/white and sweet/starchy maize kernels
         by 15 observers
         :name: counts-of-yellowwhite-and-sweetstarchy-maize-kernels-by-15-observers

      .. rubric:: Description
         :name: description

      Counts of yellow/white and sweet/starchy kernels on each of 4
      maize ears by 15 observers.

      .. rubric:: Format
         :name: format

      A data frame with 59 observations on the following 6 variables.

      ``ear``
         ear, 8-11

      ``obs``
         observer, 1-15

      ``ys``
         number of yellow starchy kernels

      ``yt``
         yellow sweet

      ``ws``
         white starchy

      ``wt``
         white sweet

      .. rubric:: Details
         :name: details

      An ear of white sweet corn was crossed with an ear of yellow
      starchy corn. The F1 kernels of the cross were grown and a sample
      of four ears was harvested. The F2 kernels of these ears were
      classified by each of 15 observers into white/yellow and
      sweet/starchy.

      By Mendelian genetics, the kernels should occur in the ratio 9
      yellow starch, 3 white starch, 3 yellow sweet, 1 white sweet.

      The observers had the following positions:

      == ===========================
      1  Plant pathologist
      2  Asst plant pathologist
      3  Prof agronomy
      4  Asst prof agronomy
      5  Prof philosophy
      6  Biologist
      7  Biologist
      8  Asst biologist
      9  Computer
      10 Farmer
      11 Prof plant physiology
      12 Instructor plant physiology
      13 Asst plant physiology
      14 Asst plant physiology
      15 Prof biology
      \  
      == ===========================

      .. rubric:: Source
         :name: source

      Raymond Pearl, 1911. The Personal Equation In Breeding Experiments
      Involving Certain Characters of Maize, Biol. Bull., 21, 339-366.
      https://www.biolbull.org/cgi/reprint/21/6/339.pdf

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(pearl.kernels)
         dat <- pearl.kernels

         libs(lattice)
         xyplot(ys+yt+ws+wt~obs|ear, dat, type='l', as.table=TRUE,
                auto.key=list(columns=4),
                main="pearl.kernels", xlab="observer",ylab="kernels",
                layout=c(4,1), scales=list(x=list(rot=90)))

         # Test hypothesis that distribution is 'Mendelian' 9:3:3:1
         dat$pval <- apply(dat[, 3:6], 1, function(x)
                           chisq.test(x, p=c(9,3,3,1)/16)$p.val)
         dotplot(pval~obs|ear, dat, layout=c(1,4), main="pearl.kernels",
                 ylab="P-value for test of 9:3:3:1 distribution")


         ## End(Not run)
