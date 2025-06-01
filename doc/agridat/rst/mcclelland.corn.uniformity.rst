.. container::

   .. container::

      ========================== ===============
      mcclelland.corn.uniformity R Documentation
      ========================== ===============

      .. rubric:: Uniformity trial of corn
         :name: uniformity-trial-of-corn

      .. rubric:: Description
         :name: description

      Uniformity trial of corn at Arkansas Experiment Station, 1925.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("mcclelland.corn.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 438 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield

      .. rubric:: Details
         :name: details

      A uniformity trial of corn in 1925 at the Arkansas Experimental
      Station. Unit of measure not given.

      Field width = 66ft \* 2 = 132 feet.

      Field length = 219 rows \* 44 inches / 12 inches/ft = 803 ft.

      Note: In the source document, table 2, first 'west' column and
      second-to-last row (page 822), the value 1.40 is assumed to be a
      typographical error and was changed to 14.0 for this data.

      The source document does not give the unit of measure for the plot
      yields. If the yield was bu/ac, the value of 12 bu/ac would be
      very low. On the other hand, a value of 12 pounds per plot \* 180
      plots per acre / 56 pounds per bushel = 39 bu/ac would be very
      reasonable yield for corn in 1925, whereas 12 kg per plot would be
      unlikely too high. Also, in 1925, pound would have been more
      likely than kilogram.

      .. rubric:: Source
         :name: source

      McClelland, Chalmer Kirk (1926). Some determinations of plat
      variability. Agronomy Journal, 18, 819-823.
      https://doi.org/10.2134/agronj1926.00021962001800090009x

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(mcclelland.corn.uniformity)
           dat <- mcclelland.corn.uniformity
           
           # McClelland table 3, first row, gives 11.2
           # Probable error = 0.67449 * sd(). Relative to mean.
           # 0.67449 * sd(dat$yield)/mean(dat$yield) # 11.2
           
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE,
                   aspect=(219*44/12)/132, # true aspect, 219 rows * 44 inches x 132 feet
                   main="mcclelland.corn.uniformity")
           

         ## End(Not run)
