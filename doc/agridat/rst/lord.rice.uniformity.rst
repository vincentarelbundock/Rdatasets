.. container::

   .. container::

      ==================== ===============
      lord.rice.uniformity R Documentation
      ==================== ===============

      .. rubric:: Uniformity trial of rice
         :name: uniformity-trial-of-rice

      .. rubric:: Description
         :name: description

      Uniformity trial of rice in Ceylon, 1929.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("lord.rice.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 560 observations on the following 5 variables.

      ``field``
         field

      ``row``
         row

      ``col``
         column

      ``grain``
         grain weight, pounds per plot

      ``straw``
         straw weight, pounds per plot

      .. rubric:: Details
         :name: details

      In 1929, eight fields 1/5 acre in size were broadcast seeded with
      rice at the Anuradhapura Experiment Station in the northern dry
      zone of Ceylon. After broadcast, the fields were marked into 10 ft
      by 10 ft squares. At harvest, weights of grain and straw were
      recorded.

      Fields 10-14 were on one side of a drain, and fields 26-28 on the
      other side.

      Each field was surrounded by a bund. Plots next to the bunds had
      higher yields.

      Field width: 5 plots \* 10 feet = 50 feet

      Field length: 14 plots \* 10 feet = 140 feet

      Conclusions: "It would appear that plots of about 1/87 acre are
      the most effective."

      .. rubric:: Source
         :name: source

      Lord, L. (1931). A Uniformity Trial with Irrigated Broadcast Rice.
      The Journal of Agricultural Science, 21(1), 178-188.
      https://doi.org/10.1017/S0021859600008029

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(lord.rice.uniformity)
         dat <- lord.rice.uniformity

         # match table on page 180
         ## libs(dplyr)
         ## dat 
         ##   field grain straw
         ##   <chr> <dbl> <dbl>
         ## 1 10      590   732
         ## 2 11      502   600
         ## 3 12      315   488
         ## 4 13      291   538
         ## 5 14      489   670
         ## 6 26      441   560
         ## 7 27      451   629
         ## 8 28      530   718

         # There are consistently high yields along all edges of the field
         # libs(lattice)
         # bwplot(grain ~ factor(col)|field,dat)
         # bwplot(grain ~ factor(col)|field,dat)

         # Heatmaps
         libs(desplot)
         desplot(dat, grain ~ col*row|field,
                 flip=TRUE, aspect=140/50,
                 main="lord.rice.uniformity")


         # bivariate scatterplots  
         # xyplot(grain ~ straw|field, dat)


         ## End(Not run)
