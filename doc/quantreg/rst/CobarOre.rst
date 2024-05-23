.. container::

   .. container::

      ======== ===============
      CobarOre R Documentation
      ======== ===============

      .. rubric:: Cobar Ore data
         :name: cobar-ore-data

      .. rubric:: Description
         :name: description

      Cobar Ore data from Green and Silverman (1994). The data consists
      of measurements on the "true width" of an ore-bearing rock layer
      from a mine in Cobar, Australia.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(CobarOre)

      .. rubric:: Format
         :name: format

      A data frame with 38 observations on the following 3 variables.

      x
         x-coordinate of location of mine site

      y
         y-coordinate of location of mine site

      z
         ore thickness

      .. rubric:: Source
         :name: source

      Green, P.J. and B.W. Silverman (1994) Nonparametric Regression
      Generalized Linear Models: A roughness penalty approach, Chapman
      Hall.

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(CobarOre)
         plot(CobarOre)
