.. container::

   .. container::

      ====================== ===============
      lyon.potato.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of potatoes
         :name: uniformity-trial-of-potatoes

      .. rubric:: Description
         :name: description

      Uniformity trial of potatoes at Nebraska Experiment Station, 1909.

      .. rubric:: Format
         :name: format

      A data frame with 204 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column, section

      ``yield``
         yield, pounds

      .. rubric:: Details
         :name: details

      In 1909, potatoes were harvested from uniform land at Nebraska
      Experiment Station.

      There were 34 rows, 34 inches apart. Lyon, page 97 says "He
      harvested each row in six sections, each of which was seventy-two
      feet and seven inches long." It is not clear if each SECTION is 72
      feet long, or if each ROW is 72 feet long. Yield of potato is
      roughly 0.5 to 0.8 pounds per square foot, so it seems more
      plausible the entire row is 72 feet long (see calculations below).

      Field width: 6 plots = 72 feet

      Field length: 34 rows \* 34 in / 12in/ft = 96 ft

      .. rubric:: Source
         :name: source

      Lyon, T.L. (1911). Some experiments to estimate errors in field
      plat tests. Proc. Amer. Soc. Agron, 3, 89-114. Table III.
      https://doi.org/10.2134/agronj1911.00021962000300010016x

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(lyon.potato.uniformity)
           dat <- lyon.potato.uniformity

           # Yield per square foot, assuming 72 foot rows
           sum(dat$yield)/(72*96) # 0.67 # seems about right
           # Yield per square foot, assuming 72 foot plots
           sum(dat$yield)/(6*72*96) # 0.11
           
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   tick=TRUE, flip=TRUE, aspect=96/72, # true aspect
                   main="lyon.potato.uniformity")
           

         ## End(Not run)
