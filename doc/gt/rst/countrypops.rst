.. container::

   =========== ===============
   countrypops R Documentation
   =========== ===============

   .. rubric:: Yearly populations of countries from 1960 to 2017
      :name: yearly-populations-of-countries-from-1960-to-2017

   .. rubric:: Description
      :name: description

   A dataset that presents yearly, total populations of countries. Total
   population is based on counts of all residents regardless of legal
   status or citizenship. Country identifiers include the
   English-language country names, and the 2- and 3-letter ISO 3166-1
   country codes. Each row contains a ``population`` value for a given
   ``year`` (from 1960 to 2017). Any ``NA`` values for ``populations``
   indicate the non-existence of the country during that year.

   .. rubric:: Usage
      :name: usage

   ::

      countrypops

   .. rubric:: Format
      :name: format

   A tibble with 12470 rows and 5 variables:

   country_name
      Name of the country

   country_code_2
      The 2-letter ISO 3166-1 country code

   country_code_3
      The 3-letter ISO 3166-1 country code

   year
      The year for the population estimate

   population
      The population estimate, midway through the year

   .. rubric:: Function ID
      :name: function-id

   11-1

   .. rubric:: Source
      :name: source

   https://data.worldbank.org/indicator/SP.POP.TOTL

   .. rubric:: See Also
      :name: see-also

   Other Datasets: ``exibble``, ``gtcars``, ``pizzaplace``, ``sp500``,
   ``sza``

   .. rubric:: Examples
      :name: examples

   ::

      # Here is a glimpse at the data
      # available in `countrypops`
      dplyr::glimpse(countrypops)
