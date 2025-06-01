.. container::

   .. container::

      =============================== ===============
      arankacami.groundnut.uniformity R Documentation
      =============================== ===============

      .. rubric:: Uniformity trial of groundnut
         :name: uniformity-trial-of-groundnut

      .. rubric:: Description
         :name: description

      Uniformity trial of groundnut

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("arankacami.groundnut.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 96 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, kg/plot

      .. rubric:: Details
         :name: details

      The year of the experiment is unknown, but before 1995.

      Basic plot size is 0.75 m (rows) x 4 m (columns).

      .. rubric:: Source
         :name: source

      Ira Arankacami, R. Rangaswamy. (1995). A Text Book of Agricultural
      Statistics. New Age International Publishers. Table 19.1. Page
      237.
      https://www.google.com/books/edition/A_Text_Book_of_Agricultural_Statistics/QDLWE4oakSgC

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
         library(agridat)
         data(arankacami.groundnut.uniformity)
         dat <- arankacami.groundnut.uniformity

         require(desplot)
         desplot(dat, yield ~ col*row,
                 flip=TRUE, aspect=(12*.75)/(8*4),
                 main="arankacami.groundnut.uniformity")


         ## End(Not run)
