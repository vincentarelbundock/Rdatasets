=========== ===============
countrypops R Documentation
=========== ===============

Yearly populations of countries from 1960 to 2017
-------------------------------------------------

Description
~~~~~~~~~~~

A dataset that presents yearly, total populations of countries. Total
population is based on counts of all residents regardless of legal
status or citizenship. Country identifiers include the English-language
country names, and the 2- and 3-letter ISO 3166-1 country codes. Each
row contains a ``population`` value for a given ``year`` (from 1960 to
2017). Any ``NA`` values for ``populations`` indicate the non-existence
of the country during that year.

Usage
~~~~~

::

   countrypops

Format
~~~~~~

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

Function ID
~~~~~~~~~~~

11-1

Source
~~~~~~

https://data.worldbank.org/indicator/SP.POP.TOTL

See Also
~~~~~~~~

Other Datasets: ``exibble``, ``gtcars``, ``pizzaplace``, ``sp500``,
``sza``

Examples
~~~~~~~~

::

   # Here is a glimpse at the data
   # available in `countrypops`
   dplyr::glimpse(countrypops)

