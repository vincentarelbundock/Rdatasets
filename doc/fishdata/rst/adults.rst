====== ===============
adults R Documentation
====== ===============

Base table of adult fish sample sites and dates.
------------------------------------------------

Description
~~~~~~~~~~~

A dataset containing base location and time catch information for adult
Galaxis maculatus.

Usage
~~~~~

.. code:: R

   adults

Format
~~~~~~

A dataset containing 48 rows and 4 variables

fish_code
   Primary key, uniquely identifies a fish

site
   Site where fish was caught

day
   Day group fish was caught on (H1 = 1st day fishing, H3 = 3rd day
   fishing). Used for by-day grouping analysis. For actual catch date
   see 'catch_date'

catch_date
   Date that the fish was caught on

Examples
~~~~~~~~

.. code:: R

   data(adults)
