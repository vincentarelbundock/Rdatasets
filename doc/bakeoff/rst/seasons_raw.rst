=========== ===============
seasons_raw R Documentation
=========== ===============

Data about each season aired in the US (raw)
--------------------------------------------

Description
~~~~~~~~~~~

This data has one row per season aired in the US as 'The Great British
Baking Show'.

Usage
~~~~~

.. code:: R

   seasons_raw

Format
~~~~~~

A data frame with 8 rows representing individual series and 11
variables:

series
   an integer denoting UK series (``1``-``8``)

episode
   an integer denoting total number of episodes within series

us_season
   an integer denoting US season (``1``-``5``)

us_airdate
   a date denoting original airdate of episode in the US, according to
   `pbs.org <https://www.pbs.org/food/shows/great-british-baking-show/>`__

Source
~~~~~~

US airdates manually recorded from
https://www.pbs.org/food/shows/great-british-baking-show/

Examples
~~~~~~~~

.. code:: R

   if (require('tibble')) {
     seasons_raw
    }
   head(seasons_raw)
