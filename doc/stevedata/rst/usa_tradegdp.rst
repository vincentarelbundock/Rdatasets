============ ===============
usa_tradegdp R Documentation
============ ===============

U.S. Trade and GDP, 1790-2018
-----------------------------

Description
~~~~~~~~~~~

A yearly data set on U.S. trade and GDP from 1790 to 2018. Data also
include a population variable to facilitate per capita adjustments, if
the user sees it useful.

Usage
~~~~~

::

   usa_tradegdp

Format
~~~~~~

A data frame with 229 observations on the following 5 variables.

``year``
   the year

``gdpb``
   U.S. GDP (nominal, in billions)

``pop``
   Population of the U.S. (in thousands)

``impo``
   The value of U.S. imports (in billions)

``expo``
   The value of U.S. exports (in billions)

Details
~~~~~~~

Data come from various sources (see, especially:
http://econdataus.com/tradeall.html). Post-1989 data come from the U.S.
Census Bureau. 2018 GDP comes from the IMF. 2018 population estimate
comes from the U.S. Census Bureau.
