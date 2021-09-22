=============== ===============
wvs_usa_regions R Documentation
=============== ===============

Region Categories for the United States in the World Values Survey
------------------------------------------------------------------

Description
~~~~~~~~~~~

This is a simple data set that summarizes what the region codes are in
the World Values Survey for the United States.

Usage
~~~~~

::

   wvs_usa_regions

Format
~~~~~~

A data frame with 63 observations the following 6 variables.

``x048wvs``
   the numeric code for supposedly the region in which the interview was
   conducted

``x048wvsmeaning``
   the meaning behind the unique ``x048wvs`` code

``stateabb``
   the corresponding state abbreviation (if available) for the unique
   ``x048wvs`` code

``statename``
   the corresponding state abbreviation (if available) for the unique
   ``x048wvs`` code

``division``
   the corresponding division for the unique ``x048wvs`` code

``region``
   the corresponding region for the unique ``x048wvs`` code

Details
~~~~~~~

The region codes are a mess. Some of these are informed guesses. For
example, I assume "Northwest" means "Pacific" and that Idaho was not
included in that category. I make a similar assumption that "Rocky
Mountain state" means "Mountain".
