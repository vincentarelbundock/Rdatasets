=== ===============
who R Documentation
=== ===============

World Health Organization TB data
---------------------------------

Description
~~~~~~~~~~~

A subset of data from the World Health Organization Global Tuberculosis
Report, and accompanying global populations.

Usage
~~~~~

::

   who

   population

Format
~~~~~~

``who``: a data frame with 7,240 rows and the columns:

country
   Country name

iso2, iso3
   2 & 3 letter ISO country codes

year
   Year

new_sp_m014 - new_rel_f65
   Counts of new TB cases recorded by group. Column names encode three
   variables that describe the group (see details).

``population``: a data frame with 4,060 rows and three columns:

country
   Country name

year
   Year

population
   Population

Details
~~~~~~~

The data uses the original codes given by the World Health Organization.
The column names for columns five through 60 are made by combining
``new_`` to a code for method of diagnosis (``rel`` = relapse, ``sn`` =
negative pulmonary smear, ``sp`` = positive pulmonary smear, ``ep`` =
extrapulmonary) to a code for gender (``f`` = female, ``m`` = male) to a
code for age group (``014`` = 0-14 yrs of age, ``1524`` = 15-24 years of
age, ``2534`` = 25 to 34 years of age, ``3544`` = 35 to 44 years of age,
``4554`` = 45 to 54 years of age, ``5564`` = 55 to 64 years of age,
``65`` = 65 years of age or older).

Source
~~~~~~

https://www.who.int/tb/country/data/download/en/
