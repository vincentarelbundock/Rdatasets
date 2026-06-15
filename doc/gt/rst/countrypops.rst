=========== ===============
countrypops R Documentation
=========== ===============

Yearly populations of countries from 1960 to 2024
-------------------------------------------------

Description
~~~~~~~~~~~

A dataset that presents yearly, total populations of countries. Total
population is based on counts of all residents regardless of legal
status or citizenship. Country identifiers include the English-language
country names, and the 2- and 3-letter ISO 3166-1 country codes. Each
row contains a ``population`` value for a given ``year`` (from 1960 to
2024). Any ``NA`` values within ``population`` indicate the
non-existence of the entity during that year.

Usage
~~~~~

.. code:: R

   countrypops

Format
~~~~~~

A tibble with 13,975 rows and 5 variables:

country_name
   The name of the country.

country_code_2, country_code_3
   The 2- and 3-letter ISO 3166-1 country codes.

year
   The year for the population estimate.

population
   The population estimate, midway through the year.

Dataset ID and Badge
~~~~~~~~~~~~~~~~~~~~

DATA-1

.. container::

   |This image of that of a dataset badge.|

Dataset Introduced
~~~~~~~~~~~~~~~~~~

``v0.2.0.5`` (March 31, 2020)

Source
~~~~~~

https://data.worldbank.org/indicator/SP.POP.TOTL

See Also
~~~~~~~~

Other datasets: ``constants``, ``exibble``, ``films``, ``gibraltar``,
``gtcars``, ``illness``, ``metro``, ``nuclides``, ``peeps``,
``photolysis``, ``pizzaplace``, ``reactions``, ``rx_addv``, ``rx_adsl``,
``sp500``, ``sza``, ``towny``

.. |This image of that of a dataset badge.| image:: https://raw.githubusercontent.com/rstudio/gt/master/images/dataset_countrypops.png
