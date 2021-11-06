.. container::

   =========== ===============
   earthquakes R Documentation
   =========== ===============

   .. rubric:: Earthquakes
      :name: earthquakes

   .. rubric:: Description
      :name: description

   Select set of notable earthquakes from 1900 to 1999.

   .. rubric:: Usage
      :name: usage

   ::

      earthquakes

   .. rubric:: Format
      :name: format

   A data frame with 123 rows and 7 variables.

   year
      Year the earthquake took place.

   month
      Month the earthquake took place.

   day
      Day the earthquake took place

   richter
      Magnitude of earthquake using the Richter Scale.

   area
      City or geographic location of earthquakes.

   region
      Country or countries if the earthquake occurred on a border.

   deaths
      Approximate number of deaths caused by earthquake

   .. rubric:: Source
      :name: source

   World Almanac and Book of Facts: 2011.

   .. rubric:: Examples
      :name: examples

   ::


      library(ggplot2)

      ggplot(earthquakes, aes(x = richter, y = deaths))+
        geom_point()

      ggplot(earthquakes, aes(x = log(deaths)))+
        geom_histogram()

