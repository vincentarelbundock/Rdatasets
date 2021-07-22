======= ===============
murders R Documentation
======= ===============

Data for 20 metropolitan areas
------------------------------

Description
~~~~~~~~~~~

Population, percent in poverty, percent unemployment, and murder rate.

Usage
~~~~~

::

   murders

Format
~~~~~~

A data frame with 20 metropolitan areas on the following 4 variables.

population
   Population.

perc_pov
   Percent in poverty.

perc_unemp
   Percent unemployed.

annual_murders_per_mil
   Number of murders per year per million people.

Source
~~~~~~

We do not have provenance for these data hence recommend not using them
for analysis.

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(murders, aes(x = perc_pov, y = annual_murders_per_mil)) +
     geom_point() +
     labs(
       x = "Percent in poverty",
       y = "Number of murders per year per million people"
       )
