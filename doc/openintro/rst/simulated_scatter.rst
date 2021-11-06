.. container::

   ================= ===============
   simulated_scatter R Documentation
   ================= ===============

   .. rubric:: Simulated data for sample scatterplots
      :name: simulated-data-for-sample-scatterplots

   .. rubric:: Description
      :name: description

   Fake data.

   .. rubric:: Usage
      :name: usage

   ::

      simulated_scatter

   .. rubric:: Format
      :name: format

   A data frame with 500 observations on the following 3 variables.

   group
      Group, representing data for a specific plot.

   x
      x-value.

   y
      y-value.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(simulated_scatter, aes(x = x, y = y)) +
        geom_point() +
        facet_wrap(~group)

