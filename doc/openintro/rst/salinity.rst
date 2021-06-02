======== ===============
salinity R Documentation
======== ===============

Salinity.
---------

Description
~~~~~~~~~~~

Data collected at three different water masses in the Bimini Lagoon,
Bahamas.

Usage
~~~~~

::

   salinity

Format
~~~~~~

A data frame with 30 rows and 2 variables.

site_number
   Location where measurments were taken.

salinity_ppt
   Salinity value in parts per thousand.

Source
~~~~~~

Till, R. (1974) Statistical Methods for the Earth Scientist: An
Introduction. London: Macmillon, 104.

Examples
~~~~~~~~

::


   library(ggplot2)
   library(broom)

   ggplot(salinity, aes(x = salinity_ppt)) +
     geom_dotplot() +
     facet_wrap(~site_number, ncol = 1)

   tidy(aov(salinity_ppt ~ site_number, data = salinity))

