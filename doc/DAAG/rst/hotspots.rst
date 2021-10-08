.. container::

   ======== ===============
   hotspots R Documentation
   ======== ===============

   .. rubric:: Hawaian island chain hotspot Potassium-Argon ages
      :name: hawaian-island-chain-hotspot-potassium-argon-ages

   .. rubric:: Description
      :name: description

   K-Ar Ages (millions of years) and distances (km) from Kilauea along
   the trend of the chain of Hawaian volcanic islands and other
   seamounts that are believed to have been created by a moving "hot
   spot". The age of Kilauea is given as 0-0.4 Ma.

   .. rubric:: Usage
      :name: usage

   ::

      data(hotspots)

   .. rubric:: Format
      :name: format

   A data frame with 36 observations on the following 6 variables.

   ``ID``
      Volcano identifier

   ``name``
      Name

   ``distance``
      Distance in kilometers

   ``age``
      K-Ar age in millions of years

   ``error``
      Standard error of estimate?

   ``source``
      Data source; see information on web site below.

   .. rubric:: Details
      :name: details

   For details of the way that errors werre calculated, refer to the
   original papers. See also the comments under ``hotspots2006``. In
   general, errors do not account for geological uncertainty.

   .. rubric:: Source
      :name: source

   http://www.soest.hawaii.edu/GG/HCV/haw_formation.html

   .. rubric:: Examples
      :name: examples

   ::

      data(hotspots)
      plot(age ~ distance, data=hotspots)
      abline(lm(age ~ distance, data=hotspots))
