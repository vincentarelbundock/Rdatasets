.. container::

   .. container::

      =========== ===============
      countrypops R Documentation
      =========== ===============

      .. rubric:: Yearly populations of countries from 1960 to 2023
         :name: yearly-populations-of-countries-from-1960-to-2023

      .. rubric:: Description
         :name: description

      A dataset that presents yearly, total populations of countries.
      Total population is based on counts of all residents regardless of
      legal status or citizenship. Country identifiers include the
      English-language country names, and the 2- and 3-letter ISO 3166-1
      country codes. Each row contains a ``population`` value for a
      given ``year`` (from 1960 to 2023). Any ``NA`` values within
      ``population`` indicate the non-existence of the entity during
      that year.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         countrypops

      .. rubric:: Format
         :name: format

      A tibble with 13,760 rows and 5 variables:

      country_name
         The name of the country.

      country_code_2, country_code_3
         The 2- and 3-letter ISO 3166-1 country codes.

      year
         The year for the population estimate.

      population
         The population estimate, midway through the year.

      .. rubric:: Dataset ID and Badge
         :name: dataset-id-and-badge

      DATA-1

      .. container::

         |This image of that of a dataset badge.|

      .. rubric:: Dataset Introduced
         :name: dataset-introduced

      ``v0.2.0.5`` (March 31, 2020)

      .. rubric:: Source
         :name: source

      https://data.worldbank.org/indicator/SP.POP.TOTL

      .. rubric:: See Also
         :name: see-also

      Other datasets: ``constants``, ``exibble``, ``films``,
      ``gibraltar``, ``gtcars``, ``illness``, ``metro``, ``nuclides``,
      ``peeps``, ``photolysis``, ``pizzaplace``, ``reactions``,
      ``rx_addv``, ``rx_adsl``, ``sp500``, ``sza``, ``towny``

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_countrypops.png
