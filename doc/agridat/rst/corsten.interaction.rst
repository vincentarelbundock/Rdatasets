.. container::

   .. container::

      =================== ===============
      corsten.interaction R Documentation
      =================== ===============

      .. rubric:: Multi-environment trial of corn
         :name: multi-environment-trial-of-corn

      .. rubric:: Description
         :name: description

      The data is the yield (kg/acre) of 20 genotypes of corn at 7
      locations.

      .. rubric:: Format
         :name: format

      A data frame with 140 observations on the following 3 variables.

      ``gen``
         genotype, 20 levels

      ``loc``
         location, 7 levels

      ``yield``
         yield, kg/acre

      .. rubric:: Details
         :name: details

      The data is used by Corsten & Denis (1990) to illustrate two-way
      clustering by minimizing the interaction sum of squares.

      In their paper, the labels on the location dendrogram have a
      slight typo. The order of the loc labels shown is 1 2 3 4 5 6 7.
      The correct order of the loc labels is 1 2 4 5 6 7 3.

      Used with permission of Jean-Baptiste Denis.

      .. rubric:: Source
         :name: source

      L C A Corsten and J B Denis, (1990). Structuring Interaction in
      Two-Way Tables By Clustering. Biometrics, 46, 207–215. Table 1.
      https://doi.org/10.2307/2531644

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)
         data(corsten.interaction)
         dat <- corsten.interaction

         libs(reshape2)
         m1 <- melt(dat, measure.var='yield')
         dmat <- acast(m1, loc~gen)

         # Corsten (1990) uses this data to illustrate simultaneous row and
         # column clustering based on interaction sums-of-squares.
         # There is no (known) function in R to reproduce this analysis
         # (please contact the package maintainer if this is not true).
         # For comparison, the 'heatmap' function clusters the rows and
         # columns _independently_ of each other.
         heatmap(dmat, main="corsten.interaction")


         ## End(Not run)
