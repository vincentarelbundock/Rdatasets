.. container::

   .. container::

      ======================== ===============
      heath.cabbage.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of cabbage.
         :name: uniformity-trial-of-cabbage.

      .. rubric:: Description
         :name: description

      Uniformity trial of cabbage.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("heath.cabbage.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 48 observations on the following 3 variables.

      ``yield``
         pounds per plot

      ``col``
         column

      ``row``
         row

      .. rubric:: Details
         :name: details

      Heath says each plot is .011 acres. An acre is 43560 sq ft, so
      each plot is 479.16 sq feet, which rounds to 480 sq feet. If Heath
      Figure 3-1 is correctly shaped, each plot is approximately 12 feet
      x 40 feet = 480 sq ft. Each plot had "some 350" plants. Harvested
      1958.

      .. rubric:: Source
         :name: source

      O.V.S. Heath (1970). Investigation by Experiment. Fig. 3-1, p. 50.
      https://archive.org/details/investigationbye0000heat

      .. rubric:: References
         :name: references

      None.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(heath.cabbage.uniformity)
           dat <- heath.cabbage.uniformity
           
           # Heath Fig 3-1, p. 50
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   aspect=(8*12)/(6*40),
                   main="heath.cabbage.uniformity")


         ## End(Not run)
