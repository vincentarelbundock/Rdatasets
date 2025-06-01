.. container::

   .. container::

      ========================= ===============
      hartman.tomato.uniformity R Documentation
      ========================= ===============

      .. rubric:: Uniformity trial of tomato
         :name: uniformity-trial-of-tomato

      .. rubric:: Description
         :name: description

      Uniformity trial of tomato in Indiana

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("hartman.tomato.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 384 observations on the following 3 variables.

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, pounds per plot

      .. rubric:: Details
         :name: details

      Grown in Indiana in 1941.

      The column ordinates in this R package dataset are not quite
      exactly the same as in the field due to the presence of roads.

      Plants were spaced 3 feet apart in rows 6 feet apart, 330 feet
      long. Each row was divided into 3 sections of 34 plants sparated
      by strips 12 feet long to provide roadways for vehicles.

      Each row was divided into 4-plant plots, with 8 plots in each
      section of row and with one plant left as a guard at the end of
      each section.

      There were 49 plants missing out of 3072 total plants, but these
      have been ignored.

      Note, the data given in Table 1 of Hartman are for 8-plant plots!

      Field width: 3 sections (34 plants \* 3 feet) + 2 roads \* 12 feet
      = 330 feet.

      Field length: 32 rows \* 6 feet = 192 feet

      As oriented on the page, plots were, on average, 330/12=27.5. feet
      wide, 6 feet tall.

      Discussion notes from Hartman.

      Total yield is 26001 pounds. Hartman says the yield of the field
      was 10.24 tons per acre, which we can verify:

      26001 lb/field \* (1/384 field/plot) \* (1/(24*6) plot/ft2) \*
      (43560 ft2/acre) \* (1/2000 tons/lb) = 10.24 tons/acre

      The rows on the top/bottom (north/south) were intended as guard
      rows, and had yields similar to the other rows, suggesting that
      competition between rows did not exist. For comparing varieties,
      96*6 foot plots work well.

      .. rubric:: Source
         :name: source

      J. D. Hartman and E. C. Stair (1942). Field Plot Technique With
      Tomatoes. Proceedings Of The American Society For Horticultural
      Science, 41, 315-320.
      https://archive.org/details/in.ernet.dli.2015.240678

      .. rubric:: References
         :name: references

      None

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(hartman.tomato.uniformity)
         libs(desplot)
         desplot(hartman.tomato.uniformity, yield ~ col*row, 
                 flip=TRUE, tick=TRUE, aspect=192/330, # true aspect
                 main="hartman.tomato.uniformity")


         ## End(Not run)
