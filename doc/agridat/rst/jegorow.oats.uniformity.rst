.. container::

   .. container::

      ======================= ===============
      jegorow.oats.uniformity R Documentation
      ======================= ===============

      .. rubric:: Uniformity trial of oats in Russia
         :name: uniformity-trial-of-oats-in-russia

      .. rubric:: Description
         :name: description

      Uniformity trial of oats in Russia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("jegorow.oats.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 240 observations on the following 3 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield per plot, kg

      .. rubric:: Details
         :name: details

      At the Sumskaya (Ssumy?) agricultural experimental station
      (Kharkov Governorate), a field was planted in April 1908 and
      harvested that summer as plots 1 sazhen sqauare. A 'sazhen' is 7
      feet.

      Field width: 8 plots \* 1 sazhen

      Field length: 30 plots \* 1 sazhen

      Data typed by K.Wright from Roemer (1920), table 10.

      .. rubric:: Source
         :name: source

      Jegorow, M. (1909). Zur Methodik des feldversuches. Russian Journ
      Expt Agric, 10, 502-520. Has a uniformity trial of oats.
      https://www.google.com/books/edition/Journal_de_l_agriculture_experimentale/510jAQAAIAAJ?hl=en

      .. rubric:: References
         :name: references

      Neyman, J., & Iwaszkiewicz, K. (1935). Statistical problems in
      agricultural experimentation. Supplement to the Journal of the
      Royal Statistical Society, 2(2), 107-180.

      Roemer, T. (1920). Der Feldversuch. Arbeiten der Deutschen
      Landwirtschafts-Gesellschaft, 302.
      https://www.google.com/books/edition/Arbeiten_der_Deutschen_Landwirtschafts_G/7zBSAQAAMAAJ

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 
           library(agridat)
           
           data(jegorow.oats.uniformity)
           dat <- jegorow.oats.uniformity
           
           mean(dat$yield) # Jegorow reports 2.03

           libs(desplot)
           desplot(dat, yield~col*row, 
                   aspect=10/24, flip=TRUE, tick=TRUE,
                   main="jegorow.oats.uniformity")

         ## End(Not run)
