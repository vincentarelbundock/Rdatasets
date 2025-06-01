.. container::

   .. container::

      ========================= ===============
      saunders.maize.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of maize in South Africa
         :name: uniformity-trial-of-maize-in-south-africa

      .. rubric:: Description
         :name: description

      Uniformity trial of maize in South Africa

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("saunders.maize.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 2500 observations on the following 4 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield per plot, pounds

      ``year``
         year

      .. rubric:: Details
         :name: details

      These two maize uniformity trials were conducted by Potchefstroom
      Experiment Station, South Africa.

      Each harvested unit was a plot of 10 plants, planted 3 feet by 3
      feet in individual hills.

      Dataset for 1928-1929 experiment

      Rows 41-43 are missing.

      Field width: 4 plots \* 10 yards = 40 yards

      Field length : 250 plots \* 1 yard = 250 yards

      Dataset for 1929-30 experiment

      Row 255 is missing

      There is an obvious edge effect in the first column.

      Field width: 5 plots \* 20 yards = 100 yards

      Field length: 300 plots \* 1 yard = 300 yards

      Two possible outliers in the 1929-30 data were verified as being
      correctly transcribed from the source document.

      This data was made available with special help from the staff at
      Rothamsted Research Library.

      Rothamsted library scanned the paper documents to pdf. Screen
      captures of the pdf were saved as jpg files, then uploaded to an
      OCR conversion site. The resulting text was about 95 percent
      accurate and was carefully hand-checked and formatted into csv
      files.

      .. rubric:: Source
         :name: source

      Rothamsted Research Library, Box STATS17 WG Cochran, Folder 5.

      .. rubric:: References
         :name: references

      Rayner & A. R. Saunders. Statistical Methods, with Special
      Reference to Field Experiments.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

           library(agridat)
           data(saunders.maize.uniformity)
           dat <- saunders.maize.uniformity

           libs(desplot)

           desplot(dat, yield ~ col*row, subset=year==1929,
                   flip=TRUE, aspect=250/40,
                   main="saunders.maize.uniformity 1928-29")
           desplot(dat, yield ~ col*row, subset=year==1930,
                   flip=TRUE, aspect=300/100,
                   main="saunders.maize.uniformity 1929-30")


         ## End(Not run)
