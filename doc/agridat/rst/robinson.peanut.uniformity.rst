.. container::

   .. container::

      ========================== ===============
      robinson.peanut.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of peanuts
         :name: uniformity-trial-of-peanuts

      .. rubric:: Description
         :name: description

      Uniformity trial of peanuts in North Carolina in 1939, 1940.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("robinson.peanut.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1152 observations on the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield in grams/plot

      ``year``
         year

      .. rubric:: Details
         :name: details

      Two crops of peanuts were grown in North Carolina in 1939 and
      1940. A different field was used each year.

      A block of 36 rows 3 feet wide and 200 feet long were harvested in
      12.5 foot lengths.

      Field length: 36 plots \* 12.5 feet = 200 feet

      Field width: 16 plots \* 3 feet = 48 feet

      Widening the plot was not as effective as increasing the plot
      length in order to reduce error. This agrees with the results of
      other uniformity studies.

      Assuming 30 percent of the total cost of an experiment is
      proportional to the size of the plots used, the optimum plot size
      is approximately 3.2 units.

      .. rubric:: Source
         :name: source

      H.F. Robinson and J.A.Rigney and P.H.Harvey (1948). Investigations
      In Peanut Plot Technique With Peanuts. Univ California Tech. Bul.
      No 86.

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(robinson.peanut.uniformity)
           dat <- robinson.peanut.uniformity

           # Mean yield per year. Robinson has 703.9, 787.3
           # tapply(dat$yield, dat$year, mean)
           #     1939     1940 
           # 703.7847 787.8125 
           
           libs(desplot)
           desplot(dat, yield ~ col*row|year,
                   flip=TRUE, tick=TRUE, aspect=200/48,
                   main="robinson.peanut.uniformity")
           

         ## End(Not run)
