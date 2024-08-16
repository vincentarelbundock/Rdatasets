.. container::

   .. container::

      ========== ===============
      pedestrian R Documentation
      ========== ===============

      .. rubric:: Pedestrian counts in the city of Melbourne
         :name: pedestrian-counts-in-the-city-of-melbourne

      .. rubric:: Description
         :name: description

      A dataset containing the hourly pedestrian counts from 2015-01-01
      to 2016-12-31 at 4 sensors in the city of Melbourne.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         pedestrian

      .. rubric:: Format
         :name: format

      A tsibble with 66,071 rows and 5 variables:

      -  **Sensor**: Sensor names (key)

      -  **Date_Time**: Date time when the pedestrian counts are
         recorded (index)

      -  **Date**: Date when the pedestrian counts are recorded

      -  **Time**: Hour associated with Date_Time

      -  **Counts**: Hourly pedestrian counts

      .. rubric:: Examples
         :name: examples

      .. code:: R

         library(dplyr)
         data(pedestrian)
         # make implicit missingness to be explicit ----
         pedestrian %>% fill_gaps()
         # compute daily maximum counts across sensors ----
         pedestrian %>%
           group_by_key() %>%
           index_by(Date) %>% # group by Date and use it as new index
           summarise(MaxC = max(Count))
