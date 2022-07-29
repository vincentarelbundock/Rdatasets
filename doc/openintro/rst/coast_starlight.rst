.. container::

   =============== ===============
   coast_starlight R Documentation
   =============== ===============

   .. rubric:: Coast Starlight Amtrak train
      :name: coast-starlight-amtrak-train

   .. rubric:: Description
      :name: description

   Travel times and distances.

   .. rubric:: Usage
      :name: usage

   ::

      coast_starlight

   .. rubric:: Format
      :name: format

   A data frame with 16 observations on the following 3 variables.

   station
      Station.

   dist
      Distance.

   travel_time
      Travel time.

   .. rubric:: Examples
      :name: examples

   ::

      library(ggplot2)

      ggplot(coast_starlight, aes(x = dist, y = travel_time)) +
        geom_point()
