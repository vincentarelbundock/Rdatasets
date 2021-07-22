============== ===============
family_college R Documentation
============== ===============

Simulated sample of parent / teen college attendance
----------------------------------------------------

Description
~~~~~~~~~~~

A simulated data set based on real population summaries.

Usage
~~~~~

::

   family_college

Format
~~~~~~

A data frame with 792 observations on the following 2 variables.

teen
   Whether the teen goes to ``college`` or ``not``.

parents
   Whether the parent holds a college ``degree`` or ``not``.

Source
~~~~~~

Simulation based off of summary information provided at
https://eric.ed.gov/?id=ED460660.

Examples
~~~~~~~~

::


   library(dplyr)

   family_college %>%
     count(teen, parents)
