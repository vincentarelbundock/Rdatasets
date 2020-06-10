== ===============
UN R Documentation
== ===============

National Statistics from the United Nations, Mostly From 2009–2011
------------------------------------------------------------------

Description
~~~~~~~~~~~

National health, welfare, and education statistics for 213 places,
mostly UN members, but also other areas like Hong Kong that are not
independent countries.

Usage
~~~~~

::

   data(UN)

Format
~~~~~~

A data frame with 213 rows on the following 7 variables.

``region``
   Region of the world: ``Africa``, ``Asia``, ``Caribbean``, ``Europe``,
   ``Latin Amer``, ``North America``, ``NorthAtlantic``, ``Oceania``.

``group``
   A factor with levels ``oecd`` for countries that are members of the
   OECD, the Organization for Economic Co-operation and Development, as
   of May 2012, ``africa`` for countries on the African continent, and
   ``other`` for all other countries. No OECD countries are located in
   Africa.

``fertility``
   Total fertility rate, number of children per woman.

``ppgdp``
   Per capita gross domestic product in US dollars.

``lifeExpF``
   Female life expectancy, years.

``pctUrban``
   Percent urban.

``infantMortality``
   Infant deaths by age 1 year per 1000 live births

Note
~~~~

Similar data, from the period 2000-2003, appear in the ``alr3`` package
under the name ``UN3``. This data set was formerly named ``UNlla`` and
replaces the older dataset named ``UN``.

Source
~~~~~~

All data were collected from UN tables accessed at
http://unstats.un.org/unsd/demographic/products/socind/ on April 23,
2012. OECD membership is from https://www.oecd.org/, accessed May 25,
2012.

References
~~~~~~~~~~

Weisberg, S. (2014). *Applied Linear Regression*, 4th edition. Hoboken
NJ: Wiley.

Examples
~~~~~~~~

::

   summary(UN)
