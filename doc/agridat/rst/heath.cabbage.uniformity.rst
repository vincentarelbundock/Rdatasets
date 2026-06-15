======================== ===============
heath.cabbage.uniformity R Documentation
======================== ===============

Uniformity trial of cabbage.
----------------------------

Description
~~~~~~~~~~~

Uniformity trial of cabbage in 1958

Usage
~~~~~

.. code:: R

   data("heath.cabbage.uniformity")

Format
~~~~~~

A data frame with 48 observations on the following 3 variables.

``yield``
   pounds per plot

``col``
   column

``row``
   row

Details
~~~~~~~

Heath says each plot is .011 acres. An acre is 43560 sq ft, so each plot
is 479.16 sq feet, which rounds to 480 sq feet. If Heath Figure 3-1 is
correctly shaped, each plot is approximately 12 feet x 40 feet = 480 sq
ft. Each plot had "some 350" plants. Harvested 1958.

Location if the experiment is unknown, but Heath was Professor of
Horticulture at the University of Reading, United Kingdom, so it is
likely the experiment was conducted in the U.K.

Source
~~~~~~

O.V.S. Heath (1970). Investigation by Experiment. Fig. 3-1, p. 50.
https://archive.org/details/investigationbye0000heat

References
~~~~~~~~~~

None.

Examples
~~~~~~~~

.. code:: R

   ## Not run: 
     library(agridat)
     data(heath.cabbage.uniformity)
     dat <- heath.cabbage.uniformity
     
     # Heath Fig 3-1, p. 50
     libs(desplot)
     desplot(dat, yield ~ col*row,
             aspect=(8*12)/(6*40),
             main="heath.cabbage.uniformity")


   ## End(Not run)
