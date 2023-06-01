.. container::

   =========== ===============
   association R Documentation
   =========== ===============

   .. rubric:: Simulated data for association plots
      :name: association

   .. rubric:: Description
      :name: description

   Simulated data set.

   .. rubric:: Usage
      :name: usage

   ::

      association

   .. rubric:: Format
      :name: format

   A data frame with 121 observations on the following 4 variables.

   x1
      a numeric vector

   x2
      a numeric vector

   x3
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

   y9
      a numeric vector

   y10
      a numeric vector

   y11
      a numeric vector

   y12
      a numeric vector

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(association, aes(x = x1, y = y1)) +
        geom_point()

      ggplot(association, aes(x = x2, y = y4)) +
        geom_point()

      ggplot(association, aes(x = x3, y = y7)) +
        geom_point()
