========= ===============
juveniles R Documentation
========= ===============

Base table of juvenile fish sample sites and dates.
---------------------------------------------------

Description
~~~~~~~~~~~

A dataset containing base location and time catch information for
juvenile Galaxis maculatus.

Usage
~~~~~

.. code:: R

   juveniles

Format
~~~~~~

A dataset containing 496 rows and 7 variables

fish_code
   Primary key, uniquely identifies each fish

fish
   Alternate key

otolith_code
   Alternate key

site
   Site that fish was caught on

day
   Day group that the fish was collected on (1 = 1st fishing day, 5 =
   5th fishing day). For exact catch date, see 'catch_date'

month
   Month that the fish was collected on

catch_date
   Day that fish was caught on

Examples
~~~~~~~~

.. code:: R

   data(juveniles)
