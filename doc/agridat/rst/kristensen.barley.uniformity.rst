.. container::

   .. container::

      ============================ ===============
      kristensen.barley.uniformity R Documentation
      ============================ ===============

      .. rubric:: Uniformity trial of barley
         :name: uniformity-trial-of-barley

      .. rubric:: Description
         :name: description

      Uniformity trial of barley conducted in Denmark, 1905.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("kristensen.barley.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 718 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, hectograms/plot

      .. rubric:: Details
         :name: details

      Experiment conducted in 1905 at Askov, Denmark. Harvested plot
      size was 10 x 14 'alen', 6.24 x 8.79 meters. The soil was uniform,
      but an attack of mildew spread from an adjacent field. Yield is
      measured in hectograms/plot for straw and grain together. (Page
      468).

      Orientation of the plots dimensions is not clear from the text,
      but the aspect used in the example below aligns well with
      Kristensen figure 1.

      Field width: 22 plots \* 8.79 m

      Field length: 11 plots \* 6.24 m

      Notes from Kristensen: Fig 5 is a 3x3 moving average, Fig 6 is
      deviation from the trend, Fig 7 is the field average added to the
      deviation. Fig 13 is another uniformity trial of barley in 1924,
      Fig 14 is a uniformity trial of oats in 1924.

      .. rubric:: Source
         :name: source

      R. K. Kristensen (1925). Anlaeg og Opgoerelse af Markforsoeg.
      Tidsskrift for landbrugets planteavl, Vol 31, 464-494. Fig 1, pg.
      467. https://dca.au.dk/publikationer/historiske/planteavl/

      .. rubric:: References
         :name: references

      J. Neyman, K. Iwaszkiewicz, St. Kolodziejczyk. (1935). Statistical
      Problems in Agricultural Experimentation. Supplement to the
      Journal of the Royal Statistical Society, Vol. 2, No. 2 (1935),
      pp. 107-180. https://doi.org/10.2307/2983637

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(kristensen.barley.uniformity)
         dat <- kristensen.barley.uniformity

         libs(desplot)
         desplot(dat, yield ~ col*row,
                 flip=TRUE, aspect=(11*6.24)/(22*8.79),
                 main="kristensen.barley.uniformity")
           

         ## End(Not run)
