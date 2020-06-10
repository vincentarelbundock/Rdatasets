============ ===============
worldRecords R Documentation
============ ===============

Record times for track and road races, at August 9th 2006
---------------------------------------------------------

Description
~~~~~~~~~~~

Record times for track and road races, at August 9th 2006

Usage
~~~~~

::

   data(worldRecords)

Format
~~~~~~

A data frame with 40 observations on the following 9 variables.

``Distance``
   distance in kilometers

``roadORtrack``
   a factor with levels ``road`` ``track``

``Place``
   place; a character vector

``Time``
   time in minutes

``Date``
   a Date

Details
~~~~~~~

For further details, and some additional details, see the web site that
is the source of the data.

Source
~~~~~~

http://www.gbrathletics.com/wrec.htm

Examples
~~~~~~~~

::

   data(worldRecords)
   xyplot(log(Time) ~ log(Distance), groups=roadORtrack, data=worldRecords)
   xyplot(log(Time) ~ log(Distance), groups=roadORtrack, data=worldRecords,
          type=c("p","r"))
   xyplot(log(Time) ~ log(Distance), groups=roadORtrack, data=worldRecords,
          type=c("p","smooth"))
