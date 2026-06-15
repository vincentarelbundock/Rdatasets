========= ===============
gapminder R Documentation
========= ===============

Gapminder Data
--------------

Description
~~~~~~~~~~~

Health and income outcomes for 184 countries from 1960 to 2016. Also
includes two character vectors, ``oecd`` and ``opec``, with the names of
OECD and OPEC countries from 2016.

Usage
~~~~~

.. code:: R

   gapminder

Format
~~~~~~

An object of class ``"data.frame"``.

Details
~~~~~~~

- country.

- year.

- infant_mortality. Infant deaths per 1000.

- life_expectancy. Life expectancy in years.

- fertility. Average number of children per woman.

- population. Country population.

- gpd. GDP according to World Bankdev.

- continent.

- region. Geographical region.

Examples
~~~~~~~~

.. code:: R

   head(gapminder)
   print(oecd)
   print(opec)
