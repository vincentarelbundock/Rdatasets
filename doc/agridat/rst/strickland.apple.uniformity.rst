.. container::

   .. container::

      =========================== ===============
      strickland.apple.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial in apple
         :name: uniformity-trial-in-apple

      .. rubric:: Description
         :name: description

      Uniformity trial in apple in Australia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("strickland.apple.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 198 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield per tree, pounds

      .. rubric:: Details
         :name: details

      Some recently re-worked trees were removed from the data.

      The distance between trees in uncertain, but likely in the range
      20-30 feet.

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
           data(strickland.apple.uniformity)
           dat <- strickland.apple.uniformity
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   main="strickland.apple.uniformity",
                   flip=TRUE, aspect=(18/11))

         ## End(Not run)
