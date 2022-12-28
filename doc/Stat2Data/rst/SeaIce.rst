.. container::

   ====== ===============
   SeaIce R Documentation
   ====== ===============

   .. rubric:: Arctic Sea Ice (1979-2015)
      :name: arctic-sea-ice-1979-2015

   .. rubric:: Description
      :name: description

   Area of sea ice in the Arctic measured yearly in September (1979 to
   2015)

   .. rubric:: Format
      :name: format

   A data frame with 37 observations on the following 4 variables.

   ``Year``
      Year (1979 - 2015)

   ``Extent``
      Extent of arctic sea ice (in million square km)

   ``Area``
      Area of arctic sea ice (in million square km)

   ``t``
      Index for year (t=1 in 1979)

   .. rubric:: Details
      :name: details

   Climatologists have been measuring the amount of sea ice in both the
   Arctic and Antarctic regions for a number of years. This datafile
   gives information about the amount of sea ice in the arctic region as
   measured in September (the time when the amount of ice is at its
   least) since 1979. The basic research question is to see if we can
   use time to model the amount of sea ice.

   In fact, there are two ways to measure the amount of sea ice: Area
   and Extent. Area measures the actual amount of space taken up by ice.
   Extent measures the area inside the outer boundaries created by the
   ice. If there are areas inside the outer boundaries that are not ice
   (think about a slice of swiss cheese), then the Extent will be a
   larger number than the Area. In fact, this is almost always true.

   .. rubric:: Source
      :name: source

   Data from
   ftp://sidads.colorado.edu/DATASETS/NOAA/G02135/Sep/N_09_areaV2.txt
   updated data from

   Witt, G. (2103) "Using Data from Climate Science to Teach
   Introductory Statistics," JSE 21:1 available at
   www.amstat.org/publications/jse/v21n1/witt.pdf
