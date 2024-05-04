.. container::

   .. container::

      ================== ===============
      thanksgiving_spend R Documentation
      ================== ===============

      .. rubric:: Thanksgiving spending, simulated based on Gallup poll.
         :name: thanksgiving-spending-simulated-based-on-gallup-poll.

      .. rubric:: Description
         :name: description

      This entry gives simulated spending data for Americans during
      Thanksgiving in 2009 based on findings of a Gallup poll.

      .. rubric:: Usage
         :name: usage

      ::

         thanksgiving_spend

      .. rubric:: Format
         :name: format

      A data frame with 436 observations on the following 1 variable.

      spending
         Amount of spending, in US dollars.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)

         ggplot(thanksgiving_spend, aes(x = spending)) +
           geom_histogram(binwidth = 20)
