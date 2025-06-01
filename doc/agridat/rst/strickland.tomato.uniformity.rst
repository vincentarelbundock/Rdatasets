.. container::

   .. container::

      ============================ ===============
      strickland.tomato.uniformity R Documentation
      ============================ ===============

      .. rubric:: Uniformity trial of tomato
         :name: uniformity-trial-of-tomato

      .. rubric:: Description
         :name: description

      Uniformity trial of tomato in Australia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("strickland.tomato.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 180 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield per plot, pounds

      .. rubric:: Details
         :name: details

      Tomato plants were placed 2 feet apart in rows 4 feet apart. Each
      plot contained 6 plants.

      Field dimensions are not given, but the most likely design is:

      Field length: 6 plots \* 6 plants \* 2 feet = 72 feet

      Field width: 30 plots \* 4 feet = 120 feet

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
           data(strickland.tomato.uniformity)
           dat <- strickland.tomato.uniformity

           mean(dat$yield)
           sd(dat$yield)

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   main="strickland.tomato.uniformity",
                   flip=TRUE, aspect=(6*12)/(30*4))

         ## End(Not run)
