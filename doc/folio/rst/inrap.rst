.. container::

   .. container::

      ===== ===============
      inrap R Documentation
      ===== ===============

      .. rubric:: Location of Inrap Archaeological Sites
         :name: location-of-inrap-archaeological-sites

      .. rubric:: Description
         :name: description

      A dataset of geographical locations of archaeological sites in
      France.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         inrap

      .. rubric:: Format
         :name: format

      A ``data.frame`` with 625 observations (archaeological sites) and
      11 variables:

      X
         ``numeric``: longitude (RGF93 v1 / Lambert-93).

      Y
         ``numeric``: latitude (RGF93 v1 / Lambert-93).

      region
         ``character``: French region.

      departement
         ``character``: French departement.

      commune
         ``character``: French city.

      site
         ``character``: name of the site.

      start
         ``Date``: excavation start date.

      end
         ``Date``: excavation end date.

      period
         ``list``: chronology periods.

      theme
         ``list``: themes.

      type
         ``character``.

      .. rubric:: Details
         :name: details

      This dataset presents the geographical locations of a selection of
      preventive archaeological excavations carried out in France by the
      Institut national de recherches archéologiques préventives
      (Inrap).

      .. rubric:: Source
         :name: source

      https://www.data.gouv.fr/fr/datasets/r/b098d16a-ae19-48e4-8c58-e659e0603acd
      (last update: 2024-06-03)

      .. rubric:: See Also
         :name: see-also

      Other geographical data: ``cities``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         # library(sf)
         # coord <- st_as_sf(inrap, coords = c("X", "Y"), crs = st_crs(2154))
         # plot(coord["region"])
