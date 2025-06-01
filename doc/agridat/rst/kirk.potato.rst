.. container::

   .. container::

      =========== ===============
      kirk.potato R Documentation
      =========== ===============

      .. rubric:: Variety trial of potatoes, highly replicated
         :name: variety-trial-of-potatoes-highly-replicated

      .. rubric:: Description
         :name: description

      Variety trial of potatoes, highly replicated

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kirk.potato")

      .. rubric:: Format
         :name: format

      A data frame with 380 observations on the following 5 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``rep``
         replicate (not block)

      ``gen``
         genotype (variety)

      ``yield``
         yield, pounds per plot

      .. rubric:: Details
         :name: details

      A highly-replicated variety trial of potatoes planted in 1924 with
      check plots every 5th row. Entries were not randomized. The rod
      rows were planted in series across the field, the rows spaced five
      links apart (nearly 3.5 feet) and with 3.5 foot passes between the
      series.

      The replicates are sometimes dis-jointed, so are not really
      blocks.

      .. rubric:: Source
         :name: source

      Kirk, L. E. and C. H. Goulden (1925) Some statistical observations
      on a yield test of potato varieties. Scientific Agriculture, 6,
      89-97. https://doi.org/10.4141/sa-1925-0088 (paywall)
      https://www.google.com/books/edition/Canadian_Journal_of_Agriculture_Science/TgIkAQAAMAAJ

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(kirk.potato)
           dat <- kirk.potato
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=1,
                   main="kirk.potato")

           # Match means in Table I
           libs(dplyr)
           dat 

         ## End(Not run)
