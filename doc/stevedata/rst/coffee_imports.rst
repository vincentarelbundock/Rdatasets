============== ===============
coffee_imports R Documentation
============== ===============

Coffee Imports for Select Importing Countries
---------------------------------------------

Description
~~~~~~~~~~~

A simple panel on coffee imports for importing countries.

Usage
~~~~~

.. code:: R

   coffee_imports

Format
~~~~~~

A data frame with 4264 observations on the following 6 variables.

``country``
   a character vector for the country

``iso2c``
   a two-character vector of the country's ISO code

``member``
   a numeric vector indicating whether the importer is or is not a
   member of the International Coffee Organization

``year``
   a numeric vector for the year

``value``
   a numeric vector for the coffee imports for all select importing
   countries (in thousand 60-kg bags)

``pop``
   a numeric vector for the population size, in units of humans

Details
~~~~~~~

Coffee consumption data come from the International Coffee Organization,
of which I feel I should be a member. Population data come from the UN
Population Division. Observations for Yugoslavia in 1990 and 1991 are
imputed manually. The observation for 1990 comes from a UN Population
Division report. The 1991 observation comes from the Yugoslavian census.

The membership variable is agnostic to when a state became a member.

Belgium and Luxembourg are one reporting unit from 1990 to 1998. They
are disaggregated here for those years. Each year is weighted by the
relative proportion of each state's population. In practice, that means
Belgium is getting about 95% of the value for those years with Belgium
getting the remaining 5% or so.

Observations for the People's Republic of China are broken into
components of China (Mainland), Hong Kong, and Macao. The consumption
data for the People's Republic of China are simply the sum of the
``value`` variable for those three observations in a given year. The
population variable is not; it codes the entire of Chinese population
(including Hong Kong and Macao). Use with that in mind.

The user may want to be mindful about when 0s in the value data are
actually communicating that the entry did not exist at the time, or no
longer exists. For example, there is no independent Armenia in 1990 (and
whatever imports Armenia had are lumped into the USSR value for 1990).
Likewise, the 0s for the USSR in 1992 are communicating the USSR no
longer exists that year and you should instead look into one of the
constituent republics for the information you want. You may want to
benchmark this information to some kind of state system membership data.
