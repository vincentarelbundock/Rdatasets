.. container::

   ======= ===============
   murders R Documentation
   ======= ===============

   .. rubric:: Data for 20 metropolitan areas
      :name: data-for-20-metropolitan-areas

   .. rubric:: Description
      :name: description

   Population, percent in poverty, percent unemployment, and murder
   rate.

   .. rubric:: Usage
      :name: usage

   ::

      murders

   .. rubric:: Format
      :name: format

   A data frame with 20 metropolitan areas on the following 4 variables.

   population
      Population.

   perc_pov
      Percent in poverty.

   perc_unemp
      Percent unemployed.

   annual_murders_per_mil
      Number of murders per year per million people.

   .. rubric:: Source
      :name: source

   We do not have provenance for these data hence recommend not using
   them for analysis.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(murders, aes(x = perc_pov, y = annual_murders_per_mil)) +
        geom_point() +
        labs(
          x = "Percent in poverty",
          y = "Number of murders per year per million people"
        )
