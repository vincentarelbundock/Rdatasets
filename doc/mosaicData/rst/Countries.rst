========= ===============
Countries R Documentation
========= ===============

Countries
---------

Description
~~~~~~~~~~~

A data frame containing country names as used by Gapminder and the
``maps`` package to facilitate conversation between the two.

Usage
~~~~~

::

   data(Countries)

Format
~~~~~~

A data frame with 258 observations on the following variables.

-  ``worldmap`` region name http://mappinghacks.com/ data sets

-  ``gapminder`` country name in Gapminder data sets

-  ``maps`` region name in ``maps`` data sets

Details
~~~~~~~

The "countries" in the ``maps`` data include several other geographic
regions (bodies of water, islands belonging to other countries, Hawaii,
etc.) that are not countries. Furthermore, the ``maps`` countries do not
include many of the countries that have been created since ca. 2000. The
mapping is therefore many-to-many, and also includes some NAs when there
is no appropriate mapping. Bodies of water in the ``maps`` data, for
example, are not assigned a country in the Gapminder.

Examples
~~~~~~~~

::

   data(Countries)
   subset(Countries, maps=="Yugoslavia")  # Where has Yugoslavia gone?
   subset(Countries, is.na(gapminder))    # Things from maps with no Gapminder equivalent
   subset(Countries, is.na(maps))         # Things from Gapminder with no maps equivalent
