.. container::

   .. container::

      ============ ===============
      ball_bearing R Documentation
      ============ ===============

      .. rubric:: Lifespan of ball bearings
         :name: lifespan-of-ball-bearings

      .. rubric:: Description
         :name: description

      A simulated data set on lifespan of ball bearings.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ball_bearing

      .. rubric:: Format
         :name: format

      A data frame with 75 observations on the following variable.

      life_span
         Lifespan of ball bearings (in hours).

      .. rubric:: Source
         :name: source

      Simulated data.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(ggplot2)

         ggplot(ball_bearing, aes(x = life_span)) +
           geom_histogram(binwidth = 1)

         qqnorm(ball_bearing$life_span)
