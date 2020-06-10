========== ===============
rainforest R Documentation
========== ===============

Rainforest Data
---------------

Description
~~~~~~~~~~~

The ``rainforest`` data frame has 65 rows and 7 columns.

Usage
~~~~~

::

   rainforest

Format
~~~~~~

This data frame contains the following columns:

dbh
   a numeric vector

wood
   a numeric vector

bark
   a numeric vector

root
   a numeric vector

rootsk
   a numeric vector

branch
   a numeric vector

species
   a factor with levels ``Acacia mabellae``, ``C. fraseri``,
   ``Acmena smithii``, ``B. myrtifolia``

Source
~~~~~~

J. Ash, Australian National University

References
~~~~~~~~~~

Ash, J. and Helman, C. (1990) Floristics and vegetation biomass of a
forest catchment, Kioloa, south coastal N.S.W. Cunninghamia, 2: 167-182.

Examples
~~~~~~~~

::

   table(rainforest$species)
