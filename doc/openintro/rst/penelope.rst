======== ===============
penelope R Documentation
======== ===============

Guesses at the weight of Penelope (a cow)
-----------------------------------------

Description
~~~~~~~~~~~

The data was collected by the Planet Money podcast to test a theory
about crowd-sourcing. Penelope's actual weight was 1,355 pounds.

Usage
~~~~~

::

   penelope

Format
~~~~~~

A data frame with 17,184 observations on the following variable.

weight
   Guesses of Penelope's weight, in pounds.

Source
~~~~~~

https://www.npr.org/sections/money/2015/08/07/429720443/17-205-people-guessed-the-weight-of-a-cow-heres-how-they-did

Examples
~~~~~~~~

::


   library(ggplot2)

   ggplot(penelope, aes(x = weight)) +
     geom_histogram(binwidth = 250)

   summary(penelope$weight)
