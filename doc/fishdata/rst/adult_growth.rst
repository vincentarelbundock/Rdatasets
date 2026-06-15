============ ===============
adult_growth R Documentation
============ ===============

Growth data of adult fish
-------------------------

Description
~~~~~~~~~~~

A dataset containing daily age and growth data for adult Galaxis
maculatus.

Usage
~~~~~

.. code:: R

   adult_growth

Format
~~~~~~

A dataset containing 16795 rows and 4 variables

fish_code
   Foreign key, matches to 'adults'. Identifies the fish being measured.

period
   a count of each otolith increment. Counts a day in the fishes life

position
   the distance of the increment from the centre of the otolith

distance
   the distance of the increment from the previous increment

Examples
~~~~~~~~

.. code:: R

   data(adult_growth)
