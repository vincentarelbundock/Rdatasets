.. container::

   ====== ===============
   storms R Documentation
   ====== ===============

   .. rubric:: Storm tracks data
      :name: storm-tracks-data

   .. rubric:: Description
      :name: description

   This data is a subset of the NOAA Atlantic hurricane database best
   track data, https://www.nhc.noaa.gov/data/#hurdat. The data includes
   the positions and attributes of 198 tropical storms, measured every
   six hours during the lifetime of a storm.

   .. rubric:: Usage
      :name: usage

   ::

      storms

   .. rubric:: Format
      :name: format

   A tibble with 10,010 observations and 13 variables:

   name
      Storm Name

   year,month,day
      Date of report

   hour
      Hour of report (in UTC)

   lat,long
      Location of storm center

   status
      Storm classification (Tropical Depression, Tropical Storm, or
      Hurricane)

   category
      Saffir-Simpson storm category (estimated from wind speed. -1 =
      Tropical Depression, 0 = Tropical Storm)

   wind
      storm's maximum sustained wind speed (in knots)

   pressure
      Air pressure at the storm's center (in millibars)

   ts_diameter
      Diameter of the area experiencing tropical storm strength winds
      (34 knots or above)

   hu_diameter
      Diameter of the area experiencing hurricane strength winds (64
      knots or above)

   .. rubric:: See Also
      :name: see-also

   The script to create the storms data set:
   https://github.com/tidyverse/dplyr/blob/master/data-raw/storms.R

   .. rubric:: Examples
      :name: examples

   ::

      storms
