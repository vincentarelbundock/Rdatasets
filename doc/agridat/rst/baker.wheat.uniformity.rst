.. container::

   .. container::

      ====================== ===============
      baker.wheat.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of wheat
         :name: uniformity-trial-of-wheat

      .. rubric:: Description
         :name: description

      Uniformity trial of wheat

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("baker.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 225 observations on the following 3 variables.

      ``row``
         row

      ``col``
         col

      ``yield``
         yield (grams)

      .. rubric:: Details
         :name: details

      Data was collected in 1939-1940. The trial consists of sixteen 40
      ft. x 40 ft. blocks subdivided into nine plots each. The data were
      secured in 1939-1940 from White Federation wheat. The design of
      the experiment was square with alleys 20 feet wide between blocks.
      The plots were 10 feet long with two guard rows on each side.

      Morning glories infested the middle two columns of blocks,
      uniformly over the blocks affected.

      The data here include missing values for the alleys so that the
      field map is approximately the correct shape and size.

      Field width: 4 blocks of 40 feet + 3 alleys of 20 feet = 220 feet.

      Field length: 4 blocks of 40 feet + 3 alleys of 20 feet = 220
      feet.

      .. rubric:: Source
         :name: source

      G. A. Baker, E. B. Roessler (1957). Implications of a uniformity
      trial with small plots of wheat. Hilgardia, 27, 183-188.
      https://hilgardia.ucanr.edu/Abstract/?a=hilg.v27n05p183
      https://doi.org/10.3733/hilg.v27n05p183

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           
           library(agridat)
           data(baker.wheat.uniformity)
           dat <- baker.wheat.uniformity

           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, aspect=1,
                   main="baker.wheat.uniformity")


         ## End(Not run)
