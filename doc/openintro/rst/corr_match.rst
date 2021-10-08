.. container::

   ========== ===============
   corr_match R Documentation
   ========== ===============

   .. rubric:: Sample data sets for correlation problems
      :name: sample-data-sets-for-correlation-problems

   .. rubric:: Description
      :name: description

   Simulated data.

   .. rubric:: Usage
      :name: usage

   ::

      corr_match

   .. rubric:: Format
      :name: format

   A data frame with 121 observations on the following 9 variables.

   x
      a numeric vector

   y1
      a numeric vector

   y2
      a numeric vector

   y3
      a numeric vector

   y4
      a numeric vector

   y5
      a numeric vector

   y6
      a numeric vector

   y7
      a numeric vector

   y8
      a numeric vector

   .. rubric:: Source
      :name: source

   Simulated data set.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(corr_match, aes(x = x, y = y1)) +
        geom_point()

      cor(corr_match$x, corr_match$y1)
