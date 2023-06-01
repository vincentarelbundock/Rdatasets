.. container::

   ==== ===============
   rock R Documentation
   ==== ===============

   .. rubric:: Measurements on Petroleum Rock Samples
      :name: rock

   .. rubric:: Description
      :name: description

   Measurements on 48 rock samples from a petroleum reservoir.

   .. rubric:: Usage
      :name: usage

   ::

      rock

   .. rubric:: Format
      :name: format

   A data frame with 48 rows and 4 numeric columns.

   ==== ===== ================================================
   [,1] area  area of pores space, in pixels out of 256 by 256
   [,2] peri  perimeter in pixels
   [,3] shape perimeter/sqrt(area)
   [,4] perm  permeability in milli-Darcies
   ==== ===== ================================================

   .. rubric:: Details
      :name: details

   Twelve core samples from petroleum reservoirs were sampled by 4
   cross-sections. Each core sample was measured for permeability, and
   each cross-section has total area of pores, total perimeter of pores,
   and shape.

   .. rubric:: Source
      :name: source

   Data from BP Research, image analysis by Ronit Katz, U. Oxford.
