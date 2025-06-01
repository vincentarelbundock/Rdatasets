.. container::

   .. container::

      ======================== ===============
      parker.orange.uniformity R Documentation
      ======================== ===============

      .. rubric:: Uniformity trial of oranges
         :name: uniformity-trial-of-oranges

      .. rubric:: Description
         :name: description

      Uniformity trial of oranges at Riverside, CA, 1921-1927.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("parker.orange.uniformity")

      .. rubric:: Format
         :name: format

      A data frame with 1364 observations on the following 4 variables.

      ``year``
         year

      ``row``
         row

      ``col``
         column

      ``yield``
         yield, pounds/tree for plot

      .. rubric:: Details
         :name: details

      An orchard of naval oranges was planted in 1917 at the University
      of California Citrus Experiment Station at Riverside. The orchard
      was maintained under uniform conditions for 10 years.

      Eight Washington Navel orange trees in a single row constituted a
      plot. The planting distance is 20 feet between trees within the
      row and 24 feet between rows. Every other row was a guard row, so
      row 2 and row 4 were observational units, while row 3 was a guard
      row. For example, from row 2 to row 4 is 2*24 = 48 feet. Another
      way to think of this is that each plot was 48 feet wide, but only
      the middle 24 feet was harvested. At each end of the plot was one
      guard tree. Including guard trees at the row ends, each row plot
      was 10 trees \* 20 feet = 200 feet long.

      Field width (west-east) 10 plots \* 200 feet = 2000 feet.

      Field length (north-south) 27 plots \* 48 feet = 1296 feet.

      An investigation into the variability between plots included
      systematic soil surveys, soil moisture, soil nitrates, and
      inspection for differences in infestation of the citrus nematode.
      None of these factors was considered to be the primary cause of
      the variations in yield.

      After the 7 years of uniformity trials, different treatments were
      applied to the plots.

      Parker et al. state that soil heterogeneity is considerable and
      first-year yields are not predictive of future yields.

      Table 25 has mean top volume per tree for each plot in 1926. Table
      26 has mean area of trunk cross section.

      .. rubric:: Source
         :name: source

      E. R. Parker & L. D. Batchelor. (1932). Variation in the Yields of
      Fruit Trees in Relation to the Planning of Future Experiments.
      Hilgardia, 7(2), 81-161. Tables 3-9.
      https://doi.org/10.3733/hilg.v07n02p081

      .. rubric:: References
         :name: references

      Batchelor, L. D. (Leon Dexter), b. 1884; Parker, E. R. (Edwin
      Robert), 1896-1952; McBride, Robert, d. 1927. (1928) Studies
      preliminary to the establishment of a series of fertilizer trials
      in a bearing citrus grove. Vol B451. Berkeley, Cal. : Agricultural
      Experiment Station
      https://archive.org/details/studiesprelimina451batc

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(parker.orange.uniformity)
         dat <- parker.orange.uniformity

         # Parker fig 2, field plan
         libs(desplot)
         dat$year <- factor(dat$year)
         # 27 rows * 48 ft x 10 cols * 200 feet
         desplot(dat, yield ~ col*row|year,
                 flip = TRUE, aspect = 27*48/(10*200), # true aspect
                 main = "parker.orange.uniformity")

         # CV across plots in each year. Similar to Parker table 11
         cv <- function(x) {
           x <- na.omit(x)
           sd(x)/mean(x)
         }
         round(100*tapply(dat$yield, dat$year, cv),2)


         # Correlation of plot yields across years. Similar to Parker table 15.
         # Paker et al may have calculated correlation differently.
         libs(reshape2)
         libs(corrgram)
         dat2 <- acast(dat, row+col ~ year, value.var = 'yield')
         round(cor(dat2, use = "pair"),3)
         corrgram(dat2, lower = panel.pts, upper = panel.conf,
                  main="parker.orange.uniformity")


         # Fertility index. Mean across years (ignoring 1921). Parker table 16
         dat3 <- aggregate(yield ~ row+col, data = subset(dat, year !=1921 ),
                           FUN = mean, na.rm = TRUE)
         round(acast(dat3, row ~ col, value.var = 'yield'),0)

         libs(desplot)
         desplot(dat3, yield ~ col*row,
                 flip = TRUE, aspect = 27*48/(10*200), # true aspect
                 main = "parker.orange.uniformity - mean across years")


         ## End(Not run)
