============ ===============
drone_blades R Documentation
============ ===============

Quadcopter Drone Blades
-----------------------

Description
~~~~~~~~~~~

Quality control data set for quadcopter drone blades, where this data
has been made up for an example.

Usage
~~~~~

::

   drone_blades

Format
~~~~~~

A data frame with 2000 observations on the following 2 variables.

supplier
   The supplier for the blade.

inspection
   The inspection conclusion.

References
~~~~~~~~~~

OpenIntro Statistics, Third Edition and Fourth Edition.

Examples
~~~~~~~~

::


   library(dplyr)

   drone_blades %>%
     count(supplier, inspection)

