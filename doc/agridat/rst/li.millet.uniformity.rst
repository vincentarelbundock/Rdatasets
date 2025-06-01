.. container::

   .. container::

      ==================== ===============
      li.millet.uniformity R Documentation
      ==================== ===============

      .. rubric:: Uniformity trial of millet
         :name: uniformity-trial-of-millet

      .. rubric:: Description
         :name: description

      Uniformity trial of millet at China in 1934.

      .. rubric:: Format
         :name: format

      A data frame with 600 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield (grams)

      .. rubric:: Details
         :name: details

      Crop date estimated to be 1934.

      Field was 100 ft x 100 ft. Plots were 15 feet long by 1 foot wide.

      Field width: 100 plots \* 1 foot = 100 feet

      Field length: 6 plots \* 15 feet = 100 feet

      Li found the most efficient use of land was obtained with plats 15
      feet long and two rowss wide. Also satisfactory would be one row
      30 feet long.

      .. rubric:: Source
         :name: source

      Li, HW and Meng, CJ and Liu, TN. 1936. Field Results in a Millet
      Breeding Experiment. Agronomy Journal, 28, 1-15. Table 1.
      https://doi.org/10.2134/agronj1936.00021962002800010001x

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
           
           data(li.millet.uniformity)
           dat <- li.millet.uniformity

           mean(dat$yield) # matches Li et al.
           
           libs(desplot)
           desplot(dat, yield~col*row,
                   aspect=100/100, # true aspect
                   main="li.millet.uniformity")
           

         ## End(Not run)
