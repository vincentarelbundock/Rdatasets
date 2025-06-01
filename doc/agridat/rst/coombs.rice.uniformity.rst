.. container::

   .. container::

      ====================== ===============
      coombs.rice.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of rice in Malaysia
         :name: uniformity-trial-of-rice-in-malaysia

      .. rubric:: Description
         :name: description

      Uniformity trial of rice in Malaysia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("coombs.rice.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 54 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield in gantangs per plot

      .. rubric:: Details
         :name: details

      Estimated harvest date is 1915 or earlier.

      Field length, 18 plots \* 1/2 chain.

      Field width, 3 plots \* 1/2 chain.

      .. rubric:: Source
         :name: source

      Coombs, G. E. and J. Grantham (1916). Field Experiments and the
      Interpretation of their results. The Agriculture Bulletin of the
      Federated Malay States, No 7.
      https://www.google.com/books/edition/The_Agricultural_Bulletin_of_the_Federat/M2E4AQAAMAAJ

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(coombs.rice.uniformity)
           dat <- coombs.rice.uniformity

           # Data check. Matches Coombs 709.4
           # sum(dat$yield)

           # There are an excess number of 12s and 14s in the yield
           libs(lattice)
           qqmath( ~ yield, dat) # weird
           
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   main="coombs.rice.uniformity",
                   flip=TRUE, aspect=(18 / 3))

         ## End(Not run)
