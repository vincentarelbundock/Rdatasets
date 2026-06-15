===================== ===============
rau.coffee.uniformity R Documentation
===================== ===============

Uniformity trial of coffee in India
-----------------------------------

Description
~~~~~~~~~~~

Uniformity trial of coffee in India in 1937

Usage
~~~~~

.. code:: R

   data("rau.coffee.uniformity")

Format
~~~~~~

A data frame with 144 observations on the following 3 variables.

``row``
   row ordinate

``col``
   column ordinate

``yield``
   yield per plot, pounds

Details
~~~~~~~

An experiment at the Balehonnur Coffee Experiment Station, India. An
area about 2 acres in size was selected. The yields are the total of 3
pickings in 1936 and 1937.

Field length: 12 rows \* 12 feet = 144 ft (each basic unit is 2 rows of
trees, about 6 feet apart)

Field width: 12 column \* 30 feet = 360 ft (each basic unit is 5 trees,
about 6 feet apart)

Note: Rau does not specify exactly which ordinate of the plots in Table
1 has 2 trees and which ordinate has 5 trees, but given the shape of
Table 1 (much wider than tall) and the logical arrangement of data, we
believe we have the dimensions correct.

Transcription details: An iPhone was used to capture the text in Table
1, page 82, which was then manually corrected by K.Wright 2025.08.13.

Source
~~~~~~

Rau, A. Ananthapadmanabha (1940). Experimental Methods in Coffee. The
Journal of the Mysore Agricultural & Experimental Union, 19, 76-89.
https://archive.org/details/mysore-agricultural_october-december-1940_19_2

References
~~~~~~~~~~

None

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
   library(agridat)
   data(rau.coffee.uniformity)
   dat <- rau.coffee.uniformity

   library(desplot)
   desplot(dat, yield~col*row,
           aspect=144/360, # probably true aspect
           flip=TRUE, main="rau.coffee.uniformity")
   mean(dat$yield) # matches 27.24 in Rau

   ## End(Not run)
