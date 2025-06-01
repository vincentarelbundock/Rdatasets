.. container::

   .. container::

      =========================== ===============
      christidis.wheat.uniformity R Documentation
      =========================== ===============

      .. rubric:: Uniformity trial of wheat
         :name: uniformity-trial-of-wheat

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat at Cambridge, UK in 1931.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("christidis.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 288 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      Two blocks, 24 rows each. In block A, each 90-foot row was divided
      into 12 units, each unit 7.5 feet long. Rows were 8 inches wide.

      Field width: 12 units \* 7.5 feet = 90 feet

      Field length: 24 rows \* 8 inches = 16 feet

      .. rubric:: Source
         :name: source

      Christidis, Basil G (1931). The importance of the shape of plots
      in field experimentation. *The Journal of Agricultural Science*,
      21, 14-37. Table VI, p. 28.
      https://dx.doi.org/10.1017/S0021859600007942

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(christidis.wheat.uniformity)
         dat <- christidis.wheat.uniformity
           
         # sum(dat$yield) # Matches Christidis
           
          libs(desplot)
          desplot(dat, yield ~  col*row,
                  flip=TRUE, aspect=16/90, # true aspect
                  main="christidis.wheat.uniformity")


         ## End(Not run)
