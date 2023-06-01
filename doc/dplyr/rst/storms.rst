.. container::

   ====== ===============
   storms R Documentation
   ====== ===============

   .. rubric:: Storm tracks data
      :name: storms

   .. rubric:: Description
      :name: description

   This dataset is the NOAA Atlantic hurricane database best track data,
   https://www.nhc.noaa.gov/data/#hurdat. The data includes the
   positions and attributes of storms from 1975-2021. Storms from 1979
   onward are measured every six hours during the lifetime of the storm.
   Storms in earlier years have some missing data.

   .. rubric:: Usage
      :name: usage

   ::

      storms

   .. rubric:: Format
      :name: format

   A tibble with 19,066 observations and 13 variables:

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
      Saffir-Simpson hurricane category calculated from wind speed.

      -  ``NA``: Not a hurricane

      -  1: 64+ knots

      -  2: 83+ knots

      -  3: 96+ knots

      -  4: 113+ knots

      -  5: 137+ knots

   wind
      storm's maximum sustained wind speed (in knots)

   pressure
      Air pressure at the storm's center (in millibars)

   tropicalstorm_force_diameter
      Diameter (in nautical miles) of the area experiencing tropical
      storm strength winds (34 knots or above). Only available starting
      in 2004.

   hurricane_force_diameter
      Diameter (in nautical miles) of the area experiencing hurricane
      strength winds (64 knots or above). Only available starting in
      2004.

   .. rubric:: See Also
      :name: see-also

   The script to create the storms data set:
   https://github.com/tidyverse/dplyr/blob/main/data-raw/storms.R

   .. rubric:: Examples
      :name: examples

   ::

      storms

      # Show a few recent storm paths
      if (requireNamespace("ggplot2", quietly = TRUE)) {
        library(ggplot2)
        storms %>%
          filter(year >= 2000) %>%
          ggplot(aes(long, lat, color = paste(year, name))) +
          geom_path(show.legend = FALSE) +
          facet_wrap(~year)
      }

      storms
