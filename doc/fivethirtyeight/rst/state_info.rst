========== ===============
state_info R Documentation
========== ===============

Information on each state
-------------------------

Description
~~~~~~~~~~~

State name, abbreviation, US Census designated division & region.

Usage
~~~~~

.. code:: R

   state_info

Format
~~~~~~

A data frame with 51 rows representing airlines and 4 variables:

state
   State name

state_abbrev
   State abbreviation

division
   US Census designated division. Values for ``division`` are nested
   within ``region``

region
   US Census designated region

Source
~~~~~~

US Census Bureau
https://en.wikipedia.org/wiki/List_of_regions_of_the_United_States#Interstate_regions.

Examples
~~~~~~~~

.. code:: R

   library(dplyr)
   # Number of states in each division
   state_info %>%
     count(division)
   # Number of states in each region
   state_info %>%
     count(region)
