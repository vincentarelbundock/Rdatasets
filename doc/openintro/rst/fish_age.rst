======== ===============
fish_age R Documentation
======== ===============

Young fish in the North Sea.
----------------------------

Description
~~~~~~~~~~~

Samples of 50 Tobis fish, or Sand Eels, were collected at three
different locations in the North Sea and the number of one-year-old fish
were counted.

Usage
~~~~~

.. code:: R

   fish_age

Format
~~~~~~

A data frame with 300 rows and 3 variables:

year
   Year the fish was caught with levels 1997 and 1998.

location
   Site the fish was caught with levels A, B and C.

one_year_old
   Is the fish one-year-old, yes or no?

Source
~~~~~~

Henrik Madsen, Paul Thyregod. 2011. Introduction to General and
Generalized Linear Models CRC Press. Boca Raton, FL. ISBN:
978-1-4200-9155-7 `Website <http://www.imm.dtu.dk/~hmad/GLM/>`__

Examples
~~~~~~~~

.. code:: R

   library(dplyr)
   library(tidyr)

   # Count the number of one-year-old fish at each location.

   fish_age |>
     filter(one_year_old == "yes") |>
     count(year, location) |>
     pivot_wider(names_from = location, values_from = n)
