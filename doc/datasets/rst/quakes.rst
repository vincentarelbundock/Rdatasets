.. container::

   .. container::

      ====== ===============
      quakes R Documentation
      ====== ===============

      .. rubric:: Locations of Earthquakes off Fiji
         :name: locations-of-earthquakes-off-fiji

      .. rubric:: Description
         :name: description

      The data set give the locations of 1000 seismic events of MB >
      4.0. The events occurred in a cube near Fiji since 1964.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         quakes

      .. rubric:: Format
         :name: format

      A data frame with 1000 observations on 5 variables.

      ==== ============ ======= ============================
      [,1] ``lat``      numeric Latitude of event
      [,2] ``long``     numeric Longitude
      [,3] ``depth``    numeric Depth (km)
      [,4] ``mag``      numeric Richter Magnitude
      [,5] ``stations`` numeric Number of stations reporting
      ==== ============ ======= ============================

      .. rubric:: Details
         :name: details

      There are two clear planes of seismic activity. One is a major
      plate junction; the other is the Tonga trench off New Zealand.
      These data constitute a subsample from a larger dataset of
      containing 5000 observations.

      .. rubric:: Source
         :name: source

      This is one of the Harvard PRIM-H project data sets. They in turn
      obtained it from Dr. John Woodhouse, Dept. of Geophysics, Harvard
      University.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         require(graphics)
         pairs(quakes, main = "Fiji Earthquakes, N = 1000", cex.main = 1.2, pch = ".")
