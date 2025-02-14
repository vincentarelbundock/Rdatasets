.. container::

   .. container::

      ===== ===============
      towny R Documentation
      ===== ===============

      .. rubric:: Populations of all municipalities in Ontario from 1996
         to 2021
         :name: populations-of-all-municipalities-in-ontario-from-1996-to-2021

      .. rubric:: Description
         :name: description

      A dataset containing census population data from six census years
      (1996 to 2021) for all 414 of Ontario's local municipalities. The
      Municipal Act of Ontario (2001) defines a local municipality as "a
      single-tier municipality or a lower-tier municipality". There are
      173 single-tier municipalities and 241 lower-tier municipalities
      representing 99 percent of Ontario's population and 17 percent of
      its land use.

      In the ``towny`` dataset we include information specific to each
      municipality such as location (in the ``latitude`` and
      ``longitude`` columns), their website URLs, their classifications,
      and land area sizes according to 2021 boundaries. Additionally,
      there are computed columns containing population density values
      for each census year and population change values from adjacent
      census years.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         towny

      .. rubric:: Format
         :name: format

      A tibble with 414 rows and 25 variables:

      name
         The name of the municipality.

      website
         The website for the municipality. This is ``NA`` if there isn't
         an official site.

      status
         The status of the municipality. This is either ``"lower-tier"``
         or ``"single-tier"``. A single-tier municipality, which takes
         on all municipal duties outlined in the Municipal Act and other
         Provincial laws, is independent of an upper-tier municipality.
         Part of an upper-tier municipality is a lower-tier
         municipality. The upper-tier and lower-tier municipalities are
         responsible for carrying out the duties laid out in the
         Municipal Act and other provincial laws.

      csd_type
         The Census Subdivision Type. This can be one of ``"village"``,
         ``"town"``, ``"township"``, ``"municipality"``, or ``"city"``.

      census_div
         The Census division, of which there are 49. This is made up of
         single-tier municipalities, regional municipalities, counties,
         and districts.

      latitude, longitude
         The location of the municipality, given as latitude and
         longitude values in decimal degrees.

      land_area_km2
         The total area of the local municipality in square kilometers.

      population_1996, population_2001, population_2006, population_2011, population_2016, population_2021
         Population values for each municipality from the 1996 to 2021
         census years.

      density_1996, density_2001, density_2006, density_2011, density_2016, density_2021
         Population density values, calculated as persons per square
         kilometer, for each municipality from the 1996 to 2021 census
         years.

      pop_change_1996_2001_pct, pop_change_2001_2006_pct, pop_change_2006_2011_pct, pop_change_2011_2016_pct, pop_change_2016_2021_pct
         Population changes between adjacent pairs of census years, from
         1996 to 2021.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-7

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.9.0`` (Mar 31, 2023)

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``countrypops``, ``exibble``,
      ``films``, ``gibraltar``, ``gtcars``, ``illness``, ``metro``,
      ``nuclides``, ``peeps``, ``photolysis``, ``pizzaplace``,
      ``reactions``, ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``

      .. rubric:: Examples
         :name: examples

      .. code:: R

         dplyr::glimpse(towny)

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_towny.png
