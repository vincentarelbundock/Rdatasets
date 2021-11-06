.. container::

   ======= ===============
   gsearch R Documentation
   ======= ===============

   .. rubric:: Simulated Google search experiment
      :name: simulated-google-search-experiment

   .. rubric:: Description
      :name: description

   The data were simulated to look like sample results from a Google
   search experiment.

   .. rubric:: Usage
      :name: usage

   ::

      gsearch

   .. rubric:: Format
      :name: format

   A data frame with 10000 observations on the following 2 variables.

   type
      a factor with levels ``new search`` ``no new search``

   outcome
      a factor with levels ``current`` ``test 1`` ``test 2``

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      table(gsearch$type, gsearch$outcome)

      ggplot(gsearch, aes(x = type, fill = outcome)) +
        geom_bar(position = "fill") +
        labs(y = "proportion")

