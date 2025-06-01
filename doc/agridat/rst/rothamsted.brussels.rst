.. container::

   .. container::

      =================== ===============
      rothamsted.brussels R Documentation
      =================== ===============

      .. rubric:: RCB experiment of brussels sprouts, 9 fertilizer
         treatments
         :name: rcb-experiment-of-brussels-sprouts-9-fertilizer-treatments

      .. rubric:: Description
         :name: description

      RCB experiment of brussels sprouts, 9 fertilizer treatments

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 5 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield of saleable sprouts, pounds

      ``trt``
         treatment, 9 levels

      ``block``
         block, 4 levels

      .. rubric:: Details
         :name: details

      The block numbers are arbitrary, and may not match the orignal
      source.

      Plots were 10 yards x 14 yards. Plot orientation is not clear.

      .. rubric:: Source
         :name: source

      Rothamsted Experimental Station Report 1934-36. Brussels sprouts:
      effect of sulphate of ammonia, poultry manure, soot and rape dust,
      pp. 191-192. Harpenden: Lawes Agricultural Trust.

      .. rubric:: References
         :name: references

      McCullagh, P. and Clifford, D., (2006). Evidence for conformal
      invariance of crop yields, *Proceedings of the Royal Society A:
      Mathematical, Physical and Engineering Science*, 462, 2119–2143.
      https://doi.org/10.1098/rspa.2006.1667

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
         library(agridat)
         data(rothamsted.brussels)
         dat <- rothamsted.brussels

         libs(lattice)
         bwplot(yield~trt, dat, main="rothamsted.brussels")

           libs(desplot)
           desplot(dat, yield~col*row,
                   num=trt, out1=block, cex=1, # aspect unknown
                   main="rothamsted.brussels")


         ## End(Not run)
