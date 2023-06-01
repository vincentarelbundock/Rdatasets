.. container::

   ============ ===============
   worldRecords R Documentation
   ============ ===============

   .. rubric:: Record times for track and road races, at August 9th 2006
      :name: worldRecords

   .. rubric:: Description
      :name: description

   Record times for track and road races, at August 9th 2006

   .. rubric:: Usage
      :name: usage

   ::

      data(worldRecords)

   .. rubric:: Format
      :name: format

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

   .. rubric:: Details
      :name: details

   For further details, and some additional details, see the web site
   that is the source of the data.

   .. rubric:: Source
      :name: source

   http://www.gbrathletics.com/wrec.htm

   .. rubric:: Examples
      :name: examples

   ::

      data(worldRecords)
      library(lattice)
      xyplot(log(Time) ~ log(Distance), groups=roadORtrack, data=worldRecords)
      xyplot(log(Time) ~ log(Distance), groups=roadORtrack, data=worldRecords,
             type=c("p","r"))
      xyplot(log(Time) ~ log(Distance), groups=roadORtrack, data=worldRecords,
             type=c("p","smooth"))
