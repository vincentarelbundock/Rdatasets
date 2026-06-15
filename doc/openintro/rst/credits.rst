======= ===============
credits R Documentation
======= ===============

College credits.
----------------

Description
~~~~~~~~~~~

A simulated dataset of number of credits taken by college students each
semester.

Usage
~~~~~

.. code:: R

   credits

Format
~~~~~~

A data frame with 100 observations on the following variable.

credits
   Number of credits.

Source
~~~~~~

Simulated data.

Examples
~~~~~~~~

.. code:: R


   library(ggplot2)

   ggplot(credits, aes(x = credits)) +
     geom_histogram(binwidth = 1)
