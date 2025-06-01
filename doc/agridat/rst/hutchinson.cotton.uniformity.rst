.. container::

   .. container::

      ============================ ===============
      hutchinson.cotton.uniformity R Documentation
      ============================ ===============

      .. rubric:: Uniformity trial of cotton
         :name: uniformity-trial-of-cotton

      .. rubric:: Description
         :name: description

      Uniformity trial of cotton harvested in 1941

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("hutchinson.cotton.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 2000 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield per plant, grams

      .. rubric:: Details
         :name: details

      The data are lint yield from single plants in a cotton uniformity
      trial in St. Vincent in 1940-41. The experiment was planted in 50
      rows with 40 plants in each row. The spacing was 1.5 feet within
      rows and 4 feet between rows.

      Field length: 40 plants \* 1.5 feet = 60 feet

      Field width: 50 columns \* 4 feet = 200 feet

      This data was made available with special help from the staff at
      Rothamsted Research Library.

      Rothamsted library scanned the paper documents to pdf. K.Wright
      used the pdf to manually type the values into an Excel file and
      immediately checked the hand-typed values. Plants marked as "Dead"
      on the PDF were left blank. There were 6 numbers that were
      illegible in the PDF. These were also left blank.

      .. rubric:: Source
         :name: source

      Rothamsted Research Library, Box STATS17 WG Cochran, Folder 2.

      .. rubric:: References
         :name: references

      A. C. Brewer and R. Mead (1986). Continuous Second Order Models of
      Spatial Variation with Application to the Efficiency of Field Crop
      Experiments. Journal of the Royal Statistical Society. Series A
      (General), 149(4), 314–348. See page 325.
      http://doi.org/10.2307/2981720

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           data(hutchinson.cotton.uniformity)
           dat <- hutchinson.cotton.uniformity
           
           require(desplot)
           desplot(dat, yield ~ col*row,
                   tick=TRUE, flip=TRUE, aspect=(40*1.5)/(50*4), # true aspect
                   main="hutchinson.cotton.uniformity")

         ## End(Not run)
