.. container::

   ======== ===============
   marathon R Documentation
   ======== ===============

   .. rubric:: New York City Marathon Times (outdated)
      :name: new-york-city-marathon-times-outdated

   .. rubric:: Description
      :name: description

   Marathon times of male and female winners of the New York City
   Marathon 1970-1999. See nyc_marathon for a more updated dataset. We
   recommend not using this dataset since the data source has been taken
   off the web.

   .. rubric:: Usage
      :name: usage

   ::

      marathon

   .. rubric:: Format
      :name: format

   A data frame with 60 observations on the following 3 variables.

   year
      Year

   gender
      Gender

   time
      Running time (in hours)

   .. rubric:: Source
      :name: source

   Data source has been removed.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(marathon, aes(x = time)) +
        geom_histogram(binwidth = 0.15)

      ggplot(marathon, aes(y = time, x = gender)) +
        geom_boxplot()
