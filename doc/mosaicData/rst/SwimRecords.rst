=========== ===============
SwimRecords R Documentation
=========== ===============

100 m Swimming World Records
----------------------------

Description
~~~~~~~~~~~

World records for men and women over time from 1905 through 2004.

Usage
~~~~~

::

   data(SwimRecords)

Format
~~~~~~

A data frame with 62 observations of the following variables.

-  ``time`` time (in seconds) of the world record

-  ``year`` Year in which the record was set

-  ``sex`` a factor with levels ``M`` and ``F``

Examples
~~~~~~~~

::

   data(SwimRecords)
   if (require(ggformula)) {
     gf_point(time ~ year, data = SwimRecords, color = ~ sex) 
   }

