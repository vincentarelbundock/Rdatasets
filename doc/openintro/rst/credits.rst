.. container::

   ======= ===============
   credits R Documentation
   ======= ===============

   .. rubric:: College credits.
      :name: college-credits.

   .. rubric:: Description
      :name: description

   A simulated data set of number of credits taken by college students
   each semester.

   .. rubric:: Usage
      :name: usage

   ::

      credits

   .. rubric:: Format
      :name: format

   A data frame with 100 observations on the following variable.

   credits
      Number of credits.

   .. rubric:: Source
      :name: source

   Simulated data.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(credits, aes(x = credits)) +
        geom_histogram(binwidth = 1)
