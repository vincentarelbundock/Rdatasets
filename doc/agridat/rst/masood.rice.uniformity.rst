.. container::

   .. container::

      ====================== ===============
      masood.rice.uniformity R Documentation
      ====================== ===============

      .. rubric:: Uniformity trial of rice
         :name: uniformity-trial-of-rice

      .. rubric:: Description
         :name: description

      Uniformity trial of rice at Lahore, Punjab, circa 2011.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("masood.rice.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 288 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, kg/m^2

      .. rubric:: Details
         :name: details

      Data by collected from the Rice Research Institute on a paddy
      yield trial. A single variety of rice was harvested in an area 12m
      x 24 m. Yield in kilograms was measured for each square meter.
      Masood et al report a low degree of similarity for neighboring
      plots.

      Note, the Smith index calculations below match the results in the
      Pakistan Journal of Agricultural Research, but do not match the
      results in the American-Eurasian Journal, which seems to be the
      same paper and seems to refer to the same data. The results may
      simply differ by a scaling factor.

      The yield values in Masood are labeled as "gm^2" (gram per sq
      meter), but this would be extremely low. Probably should be
      "kgm^2".

      Field length: 24 plots x 1m = 24m.

      Field width: 12 plots x 1m = 12m.

      Used with permission of Asif Masood.

      .. rubric:: Source
         :name: source

      Masood, M Asif and Raza, Irum. 2012. Estimation of optimum field
      plot size and shape in paddy yield trial. Pakistan J. Agric. Res.,
      Vol. 25 No. 4, 2012

      .. rubric:: References
         :name: references

      Masood, M Asif and Raza, Irum. 2012. Estimation of optimum field
      plot size and shape in paddy yield trial. American-Eurasian
      Journal of Scientific Research, 7, 264-269. Table 1.
      https://doi.org/10.5829/idosi.aejsr.2012.7.6.1926

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

           data(masood.rice.uniformity)
           dat <- masood.rice.uniformity
           
           libs(desplot)
           desplot(dat, yield ~ col*row,
                   flip=TRUE, tick=TRUE, aspect=24/12, # true aspect
                   main="masood.rice.uniformity - yield heatmap")

           libs(agricolae)
           libs(reshape2)
           dmat <- acast(dat, row~col, value.var='yield')
           index.smith(dmat,
                       main="masood.rice.uniformity",
                       col="red") # CVs match Table 3
           

         ## End(Not run)
