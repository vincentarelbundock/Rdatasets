.. container::

   .. container::

      =========================== ===============
      strickland.peach.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of peach
         :name: uniformity-trial-of-peach

      .. rubric:: Description
         :name: description

      Uniformity trial of peach trees in Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("strickland.peach.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 144 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, pounds per tree

      .. rubric:: Details
         :name: details

      Yields are the weight of peaches per individual tree in pounds.

      .. rubric:: Source
         :name: source

      A. G. Strickland (1935). Error in horticultural experiments.
      Journal of Agriculture, Victoria, 33, 408-416.
      https://handle.slv.vic.gov.au/10381/386642

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(strickland.peach.uniformity)
           dat <- strickland.peach.uniformity

           mean(dat$yield) # 131.3, Strickland has 131.3
           sd(dat$yield)/mean(dat$yield) # 31.1, Strickland has 34.4

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   main="strickland.peach.uniformity",
                   flip=TRUE, aspect=1)

         ## End(Not run)
