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
   the positions and attributes of storms from 1975-2020, measured every
   six hours during the lifetime of a storm.

   .. rubric:: Usage
      :name: usage

   ::

      storms

   .. rubric:: Format
      :name: format

   A tibble with 11,859 observations and 13 variables:

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

   tropicalstorm_force_diameter
      Diameter (in nautical miles) of the area experiencing tropical
      storm strength winds (34 knots or above)

   hurricane_force_diameter
      Diameter (in nautical miles) of the area experiencing hurricane
      strength winds (64 knots or above)

   .. rubric:: See Also
      :name: see-also

   The script to create the storms data set:
   https://github.com/tidyverse/dplyr/blob/main/data-raw/storms.R

   .. rubric:: Examples
      :name: examples

   ::

      # show a plot of the storm paths
      if (requireNamespace("ggplot2", quietly = TRUE)) {
        library(ggplot2)
        ggplot(storms) +
          aes(x=long, y=lat, color=paste(year, name)) +
          geom_path() +
          guides(color='none') +
          facet_wrap(~year)
      }

      storms
