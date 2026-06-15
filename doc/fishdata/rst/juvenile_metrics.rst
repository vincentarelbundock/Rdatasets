================ ===============
juvenile_metrics R Documentation
================ ===============

Juvenile fish metrics data
--------------------------

Description
~~~~~~~~~~~

A dataset containing metrics data for juvenile Galaxis maculatus.

Usage
~~~~~

.. code:: R

   juvenile_metrics

Format
~~~~~~

A dataset containing 496 rows and 8 variables

fish_code
   Foreign key (matches with 'juveniles')

standard_length
   standard length of the fish (distance from posterior to caudal
   peduncle), cm

body_depth
   body depth of the fish at its maximum point, cm

age
   Age of fish when caught (days)

birthdate
   Day fish hatched

growth_rate
   Average daily growth of fish (mm/day)

growth_rate
   Average daily growth of fish over first 10 days of life (mm/day)

growth_rate
   Average daily growth of fish over last 10 days of life (mm/day)

Examples
~~~~~~~~

.. code:: R

   data(juvenile_metrics)
