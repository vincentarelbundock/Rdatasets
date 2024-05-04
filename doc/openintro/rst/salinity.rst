.. container::

   .. container::

      ======== ===============
      salinity R Documentation
      ======== ===============

      .. rubric:: Salinity in Bimini Lagoon, Bahamas
         :name: salinity-in-bimini-lagoon-bahamas

      .. rubric:: Description
         :name: description

      Data collected at three different water masses in the Bimini
      Lagoon, Bahamas.

      .. rubric:: Usage
         :name: usage

      ::

         salinity

      .. rubric:: Format
         :name: format

      A data frame with 30 rows and 2 variables.

      site_number
         Location where measurements were taken.

      salinity_ppt
         Salinity value in parts per thousand.

      .. rubric:: Source
         :name: source

      Till, R. (1974) Statistical Methods for the Earth Scientist: An
      Introduction. London: Macmillon, 104.

      .. rubric:: Examples
         :name: examples

      ::

         library(ggplot2)
         library(broom)

         ggplot(salinity, aes(x = salinity_ppt)) +
           geom_dotplot() +
           facet_wrap(~site_number, ncol = 1)

         tidy(aov(salinity_ppt ~ site_number, data = salinity))
