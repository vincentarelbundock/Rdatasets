.. container::

   .. container::

      =========== ===============
      possumsites R Documentation
      =========== ===============

      .. rubric:: Possum Sites
         :name: possum-sites

      .. rubric:: Description
         :name: description

      The ``possumsites`` data frame consists of Longitudes, Latitudes,
      and altitudes for the seven sites from Southern Victoria to
      central Queensland where the ``possum`` observations were made.

      .. rubric:: Usage
         :name: usage

      ::

         possumsites

      .. rubric:: Format
         :name: format

      This data frame contains the following columns:

      Longitude
         a numeric vector

      Latitude
         a numeric vector

      altitude
         in meters

      .. rubric:: Source
         :name: source

      Lindenmayer, D. B., Viggers, K. L., Cunningham, R. B., and
      Donnelly, C. F. 1995. Morphological variation among columns of the
      mountain brushtail possum, Trichosurus caninus Ogilby
      (Phalangeridae: Marsupiala). Australian Journal of Zoology 43:
      449-458.

      .. rubric:: Examples
         :name: examples

      ::

         require(oz)
         oz(sections=c(3:5, 11:16))
         attach(possumsites)
         points(Longitude, Latitude, pch=16, col=2)
         chw <- par()$cxy[1]
         chh <- par()$cxy[2]
         posval <- c(2,4,2,2,4,2,2)
         text(Longitude+(3-posval)*chw/4, Latitude, row.names(possumsites), pos=posval)
