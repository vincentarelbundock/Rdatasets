=============== ===============
juvenile_growth R Documentation
=============== ===============

Growth data of juvenile fish
----------------------------

Description
~~~~~~~~~~~

A dataset containing daily growth data for juvenile Galaxis maculatus.

Usage
~~~~~

.. code:: R

   juvenile_growth

Format
~~~~~~

A dataset containing 87581 rows and 5 variables

fish_code
   Foreign key, links with 'juveniles'

otolith_code
   Alternate key

period
   a count of each otolith increment. Counts a day in the fishes life

position
   the distance of the increment from the centre of the otolith

distance
   the distance of the increment from the previous increment

Examples
~~~~~~~~

.. code:: R

   data(juvenile_growth)
