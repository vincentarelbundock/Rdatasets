.. container::

   ========= ===============
   geophones R Documentation
   ========= ===============

   .. rubric:: Seismic Timing Data
      :name: seismic-timing-data

   .. rubric:: Description
      :name: description

   The ``geophones`` data frame has 56 rows and 2 columns. Thickness of
   a layer of Alberta substratum as measured by a line of geophones.

   .. rubric:: Usage
      :name: usage

   ::

      geophones

   .. rubric:: Format
      :name: format

   This data frame contains the following columns:

   distance
      location of geophone.

   thickness
      time for signal to pass through substratum.

   .. rubric:: Examples
      :name: examples

   ::

      plot(geophones)
      lines(lowess(geophones, f=.25))
