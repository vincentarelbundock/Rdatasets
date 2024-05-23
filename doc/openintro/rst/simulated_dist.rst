.. container::

   .. container::

      ============== ===============
      simulated_dist R Documentation
      ============== ===============

      .. rubric:: Simulated data sets, not necessarily drawn from a
         normal distribution.
         :name: simulated-data-sets-not-necessarily-drawn-from-a-normal-distribution.

      .. rubric:: Description
         :name: description

      Data were simulated in R, and some of the simulations do not
      represent data from actual normal distributions.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         simulated_dist

      .. rubric:: Format
         :name: format

      The format is: List of 4 $ d1: data set of 100 observations. $ d2:
      data set of 50 observations. $ d3: num data set of 500
      observations. $ d4: data set of 15 observations. $ d5: num data
      set of 25 observations. $ d6: data set of 50 observations.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(simulated_dist)
         lapply(simulated_dist, qqnorm)
