==== ===============
soda R Documentation
==== ===============

soda
----

Description
~~~~~~~~~~~

A randomly generated dataset of soda preference (cola or orange) based
on location.

Usage
~~~~~

.. code:: R

   soda

Format
~~~~~~

A data frame with 60 observations on the following 2 variables.

drink
   Soda preference, cola or orange.

location
   Is the person from the West coast or East coast?

Examples
~~~~~~~~

.. code:: R


   library(dplyr)

   soda |>
     count(location, drink)
