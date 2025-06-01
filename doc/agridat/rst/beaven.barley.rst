.. container::

   .. container::

      ============= ===============
      beaven.barley R Documentation
      ============= ===============

      .. rubric:: Yields of 8 barley varieties in 1913 as used by
         Student.
         :name: yields-of-8-barley-varieties-in-1913-as-used-by-student.

      .. rubric:: Description
         :name: description

      Yields of 8 barley varieties in 1913.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data("beaven.barley")

      .. rubric:: Format
         :name: format

      A data frame with 160 observations on the following 4 variables.

      ``row``
         row

      ``col``
         column

      ``gen``
         genotype

      ``yield``
         yield (grams)

      .. rubric:: Details
         :name: details

      Eight races of barley were grown on a regular pattern of plots.

      These data were prepared from Richey (1926) because the text was
      cleaner.

      Each plot was planted 40 inches on a side, but only the middle
      square 36 inches on a side was harvested.

      Field width: 32 plots \* 3 feet = 96 feet

      Field length: 5 plots \* 3 feet = 15 feet

      .. rubric:: Source
         :name: source

      Student. (1923). On testing varieties of cereals. *Biometrika*,
      271-293.

      https://doi.org/10.1093/biomet/15.3-4.271

      .. rubric:: References
         :name: references

      Frederick D. Richey (1926). The moving average as a basis for
      measuring correlated variation in agronomic experiments. *Jour.
      Agr. Research*, 32, 1161-1175.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         ## Not run: 

         library(agridat)

         data(beaven.barley)
         dat <- beaven.barley

         # Match the means shown in Richey table IV
         tapply(dat$yield, dat$gen, mean)
         ##       a       b       c       d       e       f       g       h
         ## 298.080 300.710 318.685 295.260 306.410 276.475 304.605 271.820

         # Compare to Student 1923, diagram I,II
         libs(desplot)
         desplot(dat, yield ~ col*row,
                 aspect=15/96, # true aspect
                 main="beaven.barley - variety trial", text=gen)

         ## End(Not run)
