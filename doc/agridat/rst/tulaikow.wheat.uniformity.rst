.. container::

   .. container::

      ========================= ===============
      tulaikow.wheat.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of winter/spring wheat
         :name: uniformity-trial-of-winterspring-wheat

      .. rubric:: Description
         :name: description

      Uniformity trial of winter/spring wheat in Russia

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("tulaikow.wheat.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 480 observations on the following 4 variables.

      ``row``
         row ordinate

      ``col``
         column ordinate

      ``yield``
         yield in grams per plot

      ``season``
         winter or summer

      .. rubric:: Details
         :name: details

      Land was fallow in 1911, harvested in 1912 at the Bezenchuk
      Experimental Station in Russia. A winter wheat field of 240 square
      sazhen (24 x 10 sazhen) was divided into separate plots of 1
      square sazhen, which were cut, threshed and weighed separately.

      In the same way, a plot of Poltavka spring wheat was harvested and
      a plot of 240 square sazhen with dimensions of 15 by 16 sazhen was
      divided into plots of 1 square sazhen.

      Winter wheat:

      Field length: 10 rows \* 1 sazhen.

      Field width: 24 columns \* 1 sazhen.

      Summer wheat:

      Field length: 16 rows \* 1 sazhen.

      Field width: 15 columns \* 1 sazhen.

      Note: The Russian word (that looks like "cax" with a vertical line
      in the "x") refers to a unit of measurement. Specifically, it
      represents the sazhen, which was used in traditional Russian
      systems of measurement. The sazhen itself is approximately 3
      meters (7 feet) long. Google Translate sometimes converts "sazhen"
      into "soot", "meter" or "fathom".

      The data were typed by K.Wright from Roemer (1920), table 4, p.
      63.

      .. rubric:: Source
         :name: source

      N. Tulaikow (1913) Resultate einer mathematischen Bearbeitung von
      Ernteergebnissen. Russian Journal fur Exp Landw., 14, 88-113.
      https://www.google.com/books/edition/Journal_de_l_agriculture_experimentale/i2EjAQAAIAAJ?hl=en&gbpv=1&dq=tulaikow

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
           data(tulaikow.wheat.uniformity)
           dat <- tulaikow.wheat.uniformity
           
           libs(desplot)
           desplot(dat, yield~col*row, subset=season=="winter",
                   aspect=10/24, flip=TRUE, tick=TRUE,
                   main="tulaikow.wheat.uniformity (winter)")
           desplot(dat, yield~col*row, subset=season=="summer",
                   aspect=16/15, flip=TRUE, tick=TRUE,
                   main="tulaikow.wheat.uniformity (summer)")

         ## End(Not run)
